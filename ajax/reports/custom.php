<?php
global $wpdb;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;

$sprints = sp_fetch_all(SPRINT_TABLE, 'id', "ASC"); // Fetch sprints in ascending order
$data = [];
$allPreviousTickets = []; // To keep track of all previous sprint tickets

// Process sprints and prepare data
foreach ($sprints as $i => $sprint) {
    $query = $wpdb->prepare(
        "SELECT tickets.* FROM {$wpdb->prefix}" . TICKETS_TABLE . " AS tickets WHERE tickets.id IN (
            SELECT relation.ticket_id FROM {$wpdb->prefix}" . RELATIONSHIP_TABLE . " AS relation WHERE relation.sprint_id = %d
        )", $sprint['id']
    );
    $tickets = $wpdb->get_results($query, ARRAY_A);
    $sprint_id = $sprint['id'];

    // Initialize metrics
    $totalTickets = count($tickets);
    $uniqueTickets = 0;
    $simple = 0;
    $medium = 0;
    $complex = 0;
    $resources = [];
    $currentSprintTickets = []; // To store current sprint tickets for comparison

    // Process tickets
    foreach ($tickets as $ticket) {
        $currentSprintTickets[] = $ticket['id']; // Store current sprint ticket IDs

        // Check if the ticket is unique (not in previous sprints)
        if (!in_array($ticket['id'], $allPreviousTickets)) {
            $uniqueTickets++;
        }

        // Categorize tickets based on 'estimates'
        $estimates = (int)$ticket['estimates'];
        if (in_array($estimates, [1, 2, 3])) {
            $simple++;
        } elseif (in_array($estimates, [3, 5])) {
            $medium++;
        } elseif (in_array($estimates, [8, 13])) {
            $complex++;
        }

        // Track resources
        $user = get_user_by('id', $ticket['user_id']);
        if ($user) {
            $resources[] = $user->display_name;
        }
    }

    // Update all previous tickets for comparison
    $allPreviousTickets = array_merge($allPreviousTickets, $currentSprintTickets);

    // Prepare sprint row data
    $data[] = [
        'Sprint Name' => $sprint['name'],
        'Total Tickets' => $totalTickets,
        'Unique Tickets' => $uniqueTickets,
        'Simple (1, 2 or 3)' => $simple,
        'Medium (3 or 5)' => $medium,
        'Complex (8 or 13)' => $complex,
        'No of Resources' => count(array_unique($resources))
    ];
}

// Generate Excel file
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();
$sheet->setTitle('Sprint Report');

// Set headers
$headers = array_keys($data[0]);
foreach ($headers as $col => $header) {
    $cell = Coordinate::stringFromColumnIndex($col + 1) . '1';
    $sheet->setCellValue($cell, unslug($header));
    $sheet->getStyle($cell)->applyFromArray([
        'font' => ['bold' => true],
        'fill' => [
            'fillType' => Fill::FILL_SOLID,
            'startColor' => ['rgb' => '5A9AD4']
        ],
        'alignment' => ['horizontal' => Alignment::HORIZONTAL_CENTER],
        'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
    ]);
}

// Add a comment to cell G1
$sheet->getComment('G1')->getText()->createTextRun('May count Maisie and Amir as they worked on some of tickets started by old Devs (Sanad and Abhyan)');

// Populate rows
foreach ($data as $rowNum => $row) {
    foreach (array_values($row) as $col => $value) {
        $cell = Coordinate::stringFromColumnIndex($col + 1) . ($rowNum + 2);
        $sheet->setCellValue($cell, $value);
        $sheet->getStyle($cell)->applyFromArray([
            'fill' => [
                'fillType' => Fill::FILL_SOLID,
                'startColor' => ['rgb' => 'DDEBF7']
            ],
            'borders' => ['allBorders' => ['borderStyle' => Border::BORDER_THIN]],
        ]);
    }
}

// Adjust column widths based on content
foreach (range(1, count($headers)) as $colIndex) {
    $columnLetter = Coordinate::stringFromColumnIndex($colIndex);
    $sheet->getColumnDimension($columnLetter)->setAutoSize(true);
}

// Save file and return URL
$filename = 'Sprint-Report.xlsx';
$filePath = SPRINT_PLUGIN_PATH . '/downloads/' . $filename;
$fileUrl = SPRINT_PLUGIN_URL . '/downloads/' . $filename;
$writer = new Xlsx($spreadsheet);
$writer->save($filePath);

echo json_encode([
    'file_url' => $fileUrl,
    'file_name' => $filename,
]);
exit;
