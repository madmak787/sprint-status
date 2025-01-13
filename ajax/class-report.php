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

if ( ! class_exists( 'SPRINT_Ajax_report' ) && defined( 'ABSPATH' ) ) {
global $wpdb;
ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);

/**
 * SPRINT_Ajax_report loader class.
 */
class SPRINT_Ajax_report {

    public function __construct() {
        self::set_filters();
    }

    public function set_filters() {
        add_action( 'wp_ajax_export_data', [$this, 'export_data'] );
    }

    public function export_data() {
        $filename = 'sprints';
        $sprint_id = isset($_POST['sprint_id']) ? $_POST['sprint_id'] : null;
        $ticket_id = isset($_POST['ticket_id']) ? $_POST['ticket_id'] : null;
        $user_id = isset($_POST['user_id']) ? $_POST['user_id'] : null;

        $data = [];

        if ($sprint_id && $ticket_id) {
            $data = $this->get_data_by_sprint_and_ticket($sprint_id, $ticket_id);
        } elseif ($sprint_id) {
            $data = $this->get_data_by_sprint($sprint_id);
        } elseif ($ticket_id) {
            $data = $this->get_data_by_ticket($ticket_id);
        } elseif ($user_id) {
            // $data = $this->get_data_by_user($user_id);
            // $data[] = [
            //     'name' => 'Sheet 1',
            //     'data' => $this->get_data_by_user($user_id)
            // ];
            $data[] = [
                'name' => 'Sheet 1',
                'data' => $this->get_data_by_user($user_id),
                // 'charts' => [
                //     [
                //         'type' => DataSeries::TYPE_BARCHART, // Chart type
                //         // TYPE_BARCHART
                //         // TYPE_LINECHART
                //         // TYPE_PIECHART
                //         // TYPE_AREACHART
                //         'columns' => ['A', 'C'], // Columns to use for the chart
                //         'title' => 'Ticket Data',
                //         'x_axis' => 'Ticket IDs',
                //         'y_axis' => 'Minutes',
                //     ],
                // ],
            ];

            $filename = 'user-tickets';
        }

        // $this->generate_excel($data, $filename);
        // $this->generate_multiple_sheets_excel($data, $filename);
        $this->generate_multiple_sheets_with_charts($data, $filename);
    }

    private function get_data_by_sprint_and_ticket($sprint_id, $ticket_id) {
        // Fetch data based on sprint_id and ticket_id
        return sp_fetch_all(reportS_TABLE, ['sprint_id' => $sprint_id, 'ticket_id' => $ticket_id]);
    }

    private function get_data_by_sprint($sprint_id) {
        // Fetch data based on sprint_id
        return sp_fetch_all(reportS_TABLE, ['sprint_id' => $sprint_id]);
    }

    private function get_data_by_ticket($ticket_id) {
        // Fetch data based on ticket_id
        return sp_fetch_all(reportS_TABLE, ['ticket_id' => $ticket_id]);
    }

    private function get_data_by_user($user_id) {
        global $wpdb;
        // Fetch data based on user_id
        $query = $wpdb->prepare(
            "SELECT * FROM {$wpdb->prefix}".TICKETS_TABLE." WHERE `user_id`='%d' ORDER BY `id` DESC",
            $user_id
        );
        return $wpdb->get_results($query, ARRAY_A);
    }

    private function generate_excel($data, $filename = 'export', $sheetName = 'Sheet 1') {
        if (empty($data)) {
            wp_send_json_error(['message' => 'No data available for export.']);
        }
    
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
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
                    'startColor' => ['rgb' => '5A9AD4'] // Light green background #5A9AD4
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
                        'startColor' => ['rgb' => 'DDEBF7'] // Light orange background #DDEBF7
                    ],
                    'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
                ]);
            }
        }
    
        // Adjust column widths based on content
        $maxWidth = 20; // Max width for columns
        foreach ($headers as $col => $header) {
            $columnLetter = Coordinate::stringFromColumnIndex($col + 1);
            $sheet->getColumnDimension($columnLetter)->setAutoSize(true);
    
            // Limit the maximum width
            $columnWidth = $sheet->getColumnDimension($columnLetter)->getWidth();
            if ($columnWidth > $maxWidth) {
                $sheet->getColumnDimension($columnLetter)->setWidth($maxWidth);
            }
        }
    
        // Set headers for browser download
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '.xlsx"');
        header('Cache-Control: max-age=0');
    
        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }
    
    private function generate_multiple_sheets_excel($sheetsData, $filename = 'export') {
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
            $this->add_sheet($spreadsheet, $sheetData['name'], $sheetData['data']);
        }
    
        // Set headers for browser download
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '.xlsx"');
        header('Cache-Control: max-age=0');
    
        $writer = new Xlsx($spreadsheet);
        $writer->save('php://output');
        exit;
    }
    
    private function add_sheet($spreadsheet, $sheetName, $data) {
        $sheet = $spreadsheet->createSheet(); // Create a new sheet
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
        $maxWidth = 30; // Max width for columns
        foreach ($headers as $col => $header) {
            $columnLetter = Coordinate::stringFromColumnIndex($col + 1);
            $sheet->getColumnDimension($columnLetter)->setAutoSize(true);
    
            // Limit the maximum width
            $columnWidth = $sheet->getColumnDimension($columnLetter)->getWidth();
            if ($columnWidth > $maxWidth) {
                $sheet->getColumnDimension($columnLetter)->setWidth($maxWidth);
            }
        }
    }





    private function generate_multiple_sheets_with_charts($sheetsData, $filename = 'export') {
        if (empty($sheetsData)) {
            wp_send_json_error(['message' => 'No data available for export.']);
        }
    
        $spreadsheet = new Spreadsheet();
    
        // Remove the default blank sheet
        $spreadsheet->removeSheetByIndex(0);
    
        // Loop through the provided sheet data
        foreach ($sheetsData as $sheetData) {
            $this->add_sheet_with_chart($spreadsheet, $sheetData['name'], $sheetData['data'], $sheetData['charts'] ?? []);
        }
    
        // Set headers for browser download
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment; filename="' . $filename . '.xlsx"');
        header('Cache-Control: max-age=0');
    
        $writer = new Xlsx($spreadsheet);
        // $writer->setIncludeCharts(true); // Enable charts
        $writer->save('php://output');
        exit;
    }

    private function add_sheet_with_chart($spreadsheet, $sheetName, $data, $charts) {
        $sheet = $spreadsheet->createSheet();
        $sheet->setTitle($sheetName);
    
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
                    'startColor' => ['rgb' => '5A9AD4'] // Light green background #5A9AD4
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
                        'startColor' => ['rgb' => 'DDEBF7'] // Light orange background #DDEBF7
                    ],
                    'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
                ]);
            }
        }

        // Adjust column widths based on content
        $maxWidth = 30; // Max width for columns
        foreach ($headers as $col => $header) {
            $columnLetter = Coordinate::stringFromColumnIndex($col + 1);
            $sheet->getColumnDimension($columnLetter)->setAutoSize(true);
    
            // Limit the maximum width
            $columnWidth = $sheet->getColumnDimension($columnLetter)->getWidth();
            if ($columnWidth > $maxWidth) {
                $sheet->getColumnDimension($columnLetter)->setWidth($maxWidth);
            }
        }
    
        // Add charts if provided
        if (!empty($charts)) {
            foreach ($charts as $chart) {
                $this->add_chart_to_sheet($sheet, $chart, count($data) + 1);
            }
        }
    }

    private function add_chart_to_sheet($sheet, $columns, $chartType) {
        // Ensure $columns has at least two entries: one for categories and one for values
        if (count($columns) < 2) {
            throw new \Exception("At least two columns are required: one for categories and one for values.");
        }
    
        // Define data ranges
        $categoryRange = $columns[0] . '2:' . $columns[0] . $sheet->getHighestRow();
        $valueRange = $columns[1] . '2:' . $columns[1] . $sheet->getHighestRow();
    
        // Define the Data Series
        $dataSeriesLabels = [
            new DataSeriesValues('String', $sheet->getTitle() . '!$' . $columns[1] . '$1', null, 1),
        ];
        $xAxisTickValues = [
            new DataSeriesValues('String', $sheet->getTitle() . '!$' . $categoryRange, null, 4),
        ];
        $dataSeriesValues = [
            new DataSeriesValues('Number', $sheet->getTitle() . '!$' . $valueRange, null, 4),
        ];
    
        // Create DataSeries
        $dataSeries = new DataSeries(
            $chartType,
            null,
            range(0, count($dataSeriesValues) - 1),
            $dataSeriesLabels,
            $xAxisTickValues,
            $dataSeriesValues
        );
    
        // Create the chart layout and plot
        $layout = new Layout();
        $layout->setShowVal(true);
        $layout->setShowCatName(true);
    
        $plotArea = new PlotArea($layout, [$dataSeries]);
        $legend = new Legend(Legend::POSITION_RIGHT, null, false);
        $title = new Title('Chart Title');
        $chart = new Chart('sample_chart', $title, $legend, $plotArea);
    
        // Position chart dynamically at the bottom-left of the data
        $highestRow = $sheet->getHighestRow();
        $highestColumn = $sheet->getHighestColumn();
        
        // Dynamically adjust position based on the sheet's content
        $chart->setTopLeftPosition('A' . ($highestRow + 2)); // Below the last row
        $chart->setBottomRightPosition($highestColumn . ($highestRow + 10)); // Spans 10 rows
    
        // Add the chart to the sheet
        $sheet->addChart($chart);
    }
}

new SPRINT_Ajax_report();
}
