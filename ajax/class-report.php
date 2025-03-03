<?php
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Chart\DataSeriesValues;
use PhpOffice\PhpSpreadsheet\Chart\DataSeries;
use PhpOffice\PhpSpreadsheet\Chart\PlotArea;
use PhpOffice\PhpSpreadsheet\Chart\Legend;
use PhpOffice\PhpSpreadsheet\Chart\Chart;
use PhpOffice\PhpSpreadsheet\Chart\Title;
use PhpOffice\PhpSpreadsheet\Chart\Layout;

if (!class_exists('SPRINT_Ajax_report') && defined('ABSPATH')) {
    global $wpdb;
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    /**
     * SPRINT_Ajax_report loader class.
     */
    class SPRINT_Ajax_report
    {

        public function __construct()
        {
            self::set_filters();
        }

        public function set_filters()
        {
            add_action('wp_ajax_export_data', [$this, 'export_data']);
        }

        public function export_data()
        {
            $filename = 'sprints';
            $sprint_id = !empty($_POST['sprint_id']) ? $_POST['sprint_id'] : null;
            $ticket_id = !empty($_POST['ticket_id']) ? $_POST['ticket_id'] : null;
            $user_id = !empty($_POST['user_id']) ? $_POST['user_id'] : null;

            $data = [];

            if ($sprint_id && $ticket_id) {
                $data = $this->get_data_by_sprint_and_ticket($sprint_id, $ticket_id);
                echo 'Sprint and Ticket: <pre>' . print_r($data, true) . '</pre>';
            } elseif ($sprint_id) {
                $sprint = sp_fetch_one(SPRINT_TABLE, ['id' => $sprint_id]);
                $tickets = $this->get_data_by_sprint($sprint_id);
                $filename = slug($sprint['name']);
                $data[] = [
                    'name' => $sprint['name'],
                    'data' => $tickets
                ];
            } elseif ($ticket_id) {
                $data = $this->get_data_by_ticket($ticket_id);
                echo 'Ticket Data: <pre>' . print_r($data, true) . '</pre>';
            } elseif ($user_id) {
                $data = $this->get_data_by_user($user_id);
                $data[] = [
                    'name' => 'Sheet 1',
                    'data' => $this->get_data_by_user($user_id)
                ];
                $data[] = [
                    'name' => 'Sheet 1',
                    'data' => $this->get_data_by_user($user_id),
                    'charts' => [
                        [
                            'type' => DataSeries::TYPE_BARCHART, // Chart type
                            // TYPE_BARCHART
                            // TYPE_LINECHART
                            // TYPE_PIECHART
                            // TYPE_AREACHART
                            'columns' => ['A', 'C'], // Columns to use for the chart
                            'title' => 'Ticket Data',
                            'x_axis' => 'Ticket IDs',
                            'y_axis' => 'Minutes',
                        ],
                    ],
                ];
                $filename = 'user-tickets';
            } else {
                require 'reports/' . $_POST['button'] . '.php';
                // $filename = ucfirst($_POST['button']);
                $filename = 'all-sprints';
            }

            $this->generate_multiple_sheets_excel($data, $filename);
        }

        private function get_data_by_sprint_and_ticket($sprint_id, $ticket_id)
        {
            // Fetch data based on sprint_id and ticket_id
            return sp_fetch_all(reportS_TABLE, ['sprint_id' => $sprint_id, 'ticket_id' => $ticket_id]);
        }

        private function get_data_by_sprint($sprint_id)
        {
            global $wpdb;
            // Fetch data based on sprint_id
            $query = $wpdb->prepare(
                "SELECT tickets.* FROM {$wpdb->prefix}" . TICKETS_TABLE . " AS tickets WHERE tickets.id IN (
                SELECT relation.ticket_id FROM {$wpdb->prefix}" . RELATIONSHIP_TABLE . " AS relation WHERE relation.sprint_id = %d
            )",
                $sprint_id
            );
            $tickets = $wpdb->get_results($query, ARRAY_A);
            $tickets = array_map(function ($ticket) use ($sprint_id) {
                $user = get_user_by('id', $ticket['user_id']);
                // $return['description'] = $ticket['description'];
                $return['ticket_ID'] = $ticket['jira_id'];
                $return['summary'] = $ticket['name'];
                // $return['description'] = $ticket['description'];
                $return['assignee'] = $user->display_name;
                $return['estimation'] = $ticket['estimates'];
                $return['type'] = ucfirst(TTYPES[$ticket['type']]);
                
                $revision = sp_fetch_one(REVISION_TABLE, ['sprint_id' => $sprint_id, 'ticket_id' => $ticket['id']]);
                $return['status'] = unslug($revision['status']);
                $return['particulars'] = $revision['comment'];
                $return['%'] = $revision['percentage'];
                
                $issues = sp_fetch(ISSUES_TABLE, ['sprint_id' => $sprint_id, 'ticket_id' => $ticket['id']]);
                $return['Issues/Improvements'] = count($issues) > 0 ? count($issues) : '';
                $reporters = [];
                foreach($issues as $issue) {
                    $reported_by = get_user_by('id', $issue['reported_by']);
                    $reporters[] = $reported_by->display_name;
                }
                $reporters = array_unique($reporters);
                $return['Reported By'] = implode('/', $reporters);
                
                return $return;
            }, $tickets);
            return $tickets;
        }

        private function get_data_by_ticket($ticket_id)
        {
            // Fetch data based on ticket_id
            return sp_fetch_all(reportS_TABLE, ['ticket_id' => $ticket_id]);
        }

        private function get_data_by_user($user_id)
        {
            global $wpdb;
            // Fetch data based on user_id
            $query = $wpdb->prepare(
                "SELECT * FROM {$wpdb->prefix}" . TICKETS_TABLE . " WHERE `user_id`='%d' ORDER BY `id` DESC",
                $user_id
            );
            return $wpdb->get_results($query, ARRAY_A);
        }

        /**
         * Generates an Excel file with multiple sheets.
         *
         * @param array $sheetsData Data for each sheet to be included in the Excel file.
         * @param string $filename The name of the generated Excel file (default is 'export').
         *
         * @return void
         */
        private function generate_multiple_sheets_excel($sheetsData, $filename = 'export')
        {
            if (empty($sheetsData)) {
                wp_send_json_error(['message' => 'No data available for export.']);
            }

            $spreadsheet = new Spreadsheet();

            // Remove the default blank sheet if sheetsData has more than one sheet
            if (count($sheetsData) > 0) {
                $spreadsheet->removeSheetByIndex(0); // Remove the default blank sheet
            }

            // Loop through the provided sheet data
            foreach ($sheetsData as $sheetData) {
                if (!empty($sheetData['data'])) {
                    $this->add_sheet($spreadsheet, $sheetData['name'], $sheetData['data']);
                }
            }

            // Set headers for browser download
            // header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            // header('Content-Disposition: attachment; filename="' . $filename . '.xlsx"');
            // header('Cache-Control: max-age=0');

            $writer = new Xlsx($spreadsheet);
            $writer->setIncludeCharts(true); // Enable chart rendering
            // $writer->save('php://output');

            $filePath = SPRINT_PLUGIN_PATH . '/downloads/'.slug($filename).'.xlsx';
            $fileUrl = SPRINT_PLUGIN_URL . '/downloads/'.slug($filename).'.xlsx';
            $writer->save($filePath);

            echo json_encode(['file_url' => $fileUrl]);
            exit;
        }

        private function add_sheet($spreadsheet, $sheetName, $data)
        {
            $sheet = $spreadsheet->createSheet(); // Create a new sheet
            $sheet->calculateColumnWidths();
            $sheet->setTitle($sheetName); // Set the sheet name

            // Set headers
            $headers = array_keys($data[0]);
            foreach ($headers as $col => $header) {
                $cell = Coordinate::stringFromColumnIndex($col + 1) . '1'; // Row 1 for headers
                $sheet->setCellValue($cell, unslug($header));

                // Apply header styles (background color, bold text, alignment)
                $sheet->getStyle($cell)->applyFromArray([
                    'font' => ['bold' => true],
                    'fill' => [
                        'fillType' => Fill::FILL_SOLID,
                        'startColor' => ['rgb' => '5A9AD4'] // Light green background
                    ],
                    'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
                    'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
                ]);
            }

            // Set rows
            foreach ($data as $rowNum => $row) {
                foreach (array_values($row) as $col => $value) {
                    $cell = Coordinate::stringFromColumnIndex($col + 1) . ($rowNum + 2); // Row starts at 2
                    $sheet->setCellValue($cell, $value);

                    // Apply row styles (different background color)
                    $sheet->getStyle($cell)->applyFromArray([
                        'fill' => [
                            'fillType' => Fill::FILL_SOLID,
                            'startColor' => ['rgb' => 'DDEBF7'] // Light orange background
                        ],
                        'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
                    ]);
                }
            }

            // Adjust column widths based on content
            $maxWidth = 60; // Max width for columns
            foreach ($headers as $col => $header) {
                $columnLetter = Coordinate::stringFromColumnIndex($col + 1);
                $colD = $sheet->getColumnDimension($columnLetter);
                $colD->setAutoSize(true);

                if ($columnLetter == 'B' || $columnLetter == 'G') {
                    $colD->setAutoSize(false);
                    $colD->setWidth($maxWidth);
                }
            }

            // How I can add a chart to the sheet?
            $this->add_charts($sheet);

            // Add a cells group

        }

        private function add_charts($sheet) {
            $highestRow = $sheet->getHighestRow();
        
            if ($highestRow <= 1) {
                return; // No data to chart
            }
        
            // Enclose sheet name in single quotes to handle special characters
            $safeSheetTitle = "'" . $sheet->getTitle() . "'";
        
            // Process the data: Create unique labels and their counts
            $uniqueAssignees = [];
            for ($row = 2; $row <= $highestRow; $row++) {
                $assignee = $sheet->getCell('C' . $row)->getValue();
                if (!isset($uniqueAssignees[$assignee])) {
                    $uniqueAssignees[$assignee] = 0;
                }
                $uniqueAssignees[$assignee]++;
            }
        
            // Prepare chart data arrays
            $uniqueLabels = array_keys($uniqueAssignees);
            $uniqueCounts = array_values($uniqueAssignees);
        
            // Chart 1: Count of Unique Assignees
            $dataSeriesLabels1 = [
                new DataSeriesValues('String', null, null, 1, ['Count']), // Embed "Count" header
            ];
            $xAxisTickValues1 = [
                new DataSeriesValues('String', null, null, count($uniqueLabels), $uniqueLabels), // Embed unique labels
            ];
            $dataSeriesValues1 = [
                new DataSeriesValues('Number', null, null, count($uniqueCounts), $uniqueCounts), // Embed unique counts
            ];
        
            $dataSeries1 = new DataSeries(
                DataSeries::TYPE_BARCHART,
                DataSeries::GROUPING_CLUSTERED,
                range(0, count($dataSeriesValues1) - 1),
                $dataSeriesLabels1,
                $xAxisTickValues1,
                $dataSeriesValues1
            );
        
            $layout1 = new Layout();
            $layout1->setShowVal(true); // Show values on bars
            $layout1->setShowCatName(false); // Hide category names
        
            $plotArea1 = new PlotArea($layout1, [$dataSeries1]);
            $legend1 = new Legend(Legend::POSITION_BOTTOM, null, false); // Legend at bottom
            $title1 = new Title('Count of Assignees'); // Chart title
            $chart1 = new Chart('chart1', $title1, $legend1, $plotArea1);
        
            // Position chart below the data
            $chart1->setTopLeftPosition('B' . ($highestRow + 4));
            $chart1->setBottomRightPosition('E' . ($highestRow + 20));
        
            // Add the chart to the sheet
            $sheet->addChart($chart1);
        
            // Process the data for Chart 2: Sum of Estimation by Assignee
            $sumEstimations = [];
            for ($row = 2; $row <= $highestRow; $row++) {
                $assignee = $sheet->getCell('C' . $row)->getValue();
                $estimation = $sheet->getCell('D' . $row)->getValue();
                if (!isset($sumEstimations[$assignee])) {
                    $sumEstimations[$assignee] = 0;
                }
                $sumEstimations[$assignee] += $estimation;
            }

            // Prepare chart data arrays for Chart 2
            $sumLabels = array_keys($sumEstimations);
            $sumValues = array_values($sumEstimations);

            // Chart 2: Sum of Estimation by Assignee
            $dataSeriesLabels2 = [
                new DataSeriesValues('String', null, null, 1, ['Sum of Estimation']), // Embed "Sum of Estimation" header
            ];
            $xAxisTickValues2 = [
                new DataSeriesValues('String', null, null, count($sumLabels), $sumLabels), // Embed unique labels
            ];
            $dataSeriesValues2 = [
                new DataSeriesValues('Number', null, null, count($sumValues), $sumValues), // Embed sum values
            ];

            $dataSeries2 = new DataSeries(
                DataSeries::TYPE_BARCHART,
                DataSeries::GROUPING_CLUSTERED,
                range(0, count($dataSeriesValues2) - 1),
                $dataSeriesLabels2,
                $xAxisTickValues2,
                $dataSeriesValues2
            );

            $layout2 = new Layout();
            $layout2->setShowVal(true); // Show values on bars
            $layout2->setShowCatName(false); // Hide category names

            $plotArea2 = new PlotArea($layout2, [$dataSeries2]);
            $legend2 = new Legend(Legend::POSITION_BOTTOM, null, false); // Legend at bottom
            $title2 = new Title('Sum of Estimation by Assignee'); // Chart title
            $chart2 = new Chart('chart2', $title2, $legend2, $plotArea2);

            // Position chart next to the first chart with reduced width
            $chart2->setTopLeftPosition('F' . ($highestRow + 4));
            $chart2->setBottomRightPosition('I' . ($highestRow + 20)); // Adjusted to make it half the width

            // Add the second chart to the sheet
            $sheet->addChart($chart2);
        }
        
        
    }

    new SPRINT_Ajax_report();
}
