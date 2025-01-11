<?php
if(!function_exists('slug')) {
    function slug($str) {
        return str_replace(" ","-",strtolower($str));
    }
}

if(!function_exists('unslug')) {
    function unslug($str) {
        $str = str_replace("-"," ",$str);
        $str = str_replace("_"," ",$str);
        $arr = explode(' ',$str);
        $s = '';
        foreach($arr as $a) {
            $s .= ucfirst($a).' ';
        }
        return rtrim($s,' ');
    }
}

function analyzeTicketDetails($ticketDetails)
{
    if (empty($ticketDetails) || !isset($ticketDetails['fields'])) {
        throw new Exception('Invalid ticket details response');
    }

    $fields = $ticketDetails['fields'];

    return [
        'name' => $fields['summary'] ?? 'N/A',
        'description' => extractFullDescription($fields['description'] ?? []),
        'status' => $fields['status']['name'] ?? 'N/A',
        'assignee' => $fields['assignee']['displayName'] ?? 'Unassigned',
        'estimate' => $fields['timeestimate'] ?? 'N/A',
        'remaining_time' => isset($fields['aggregatetimeestimate']) ? ($fields['aggregatetimeestimate'] / 3600) . ' hours' : 'N/A',
        'created' => $fields['created'] ?? 'N/A',
        'updated' => $fields['updated'] ?? 'N/A',
        'estimates' => $fields['customfield_10033'] ?? 'N/A', // story point
    ];
}

function extractFullDescription($description)
{
    if (empty($description) || !isset($description['content'])) {
        return 'No description available.';
    }

    $fullDescription = '';

    foreach ($description['content'] as $content) {
        $fullDescription .= parseContent($content) . "\n";
    }

    return trim($fullDescription);
}

function parseContent($content)
{
    $text = '';

    if (isset($content['type'])) {
        switch ($content['type']) {
            case 'paragraph':
                $text .= parseInlineContent($content['content'] ?? []) . "\n";
                break;

            case 'bulletList':
                foreach ($content['content'] as $listItem) {
                    $text .= "- " . parseContent($listItem) . "\n";
                }
                break;

            case 'listItem':
                foreach ($content['content'] as $listItemContent) {
                    $text .= parseContent($listItemContent);
                }
                break;

            case 'text':
                $text .= $content['text'];
                if (isset($content['marks'])) {
                    foreach ($content['marks'] as $mark) {
                        if ($mark['type'] === 'strong') {
                            $text = "**" . $text . "**"; // Add strong formatting
                        }
                    }
                }
                break;

            case 'inlineCard':
                if (isset($content['attrs']['url'])) {
                    $text .= $content['attrs']['url'] . "\n";
                }
                break;

            default:
                // Handle other types if necessary
                break;
        }
    }

    return $text;
}

function parseInlineContent($inlineContents)
{
    $text = '';

    foreach ($inlineContents as $inlineContent) {
        $text .= parseContent($inlineContent);
    }

    return $text;
}

function convertMinutesToHoursAndMinutes($totalMinutes) {
    // Calculate hours and remaining minutes
    $hours = floor($totalMinutes / 60);
    $minutes = $totalMinutes % 60;

    // Build the result string
    $result = [];
    if ($hours > 0) {
        $result[] = $hours . " Hour" . ($hours > 1 ? "s" : "");
    }
    if ($minutes > 0) {
        $result[] = $minutes . " Minute" . ($minutes > 1 ? "s" : "");
    }

    // Join the parts with a space
    return implode(" ", $result);
}
