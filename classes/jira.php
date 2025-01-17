<?php
class JiraAPI
{
    private $baseUrl;
    private $username;
    private $apiToken;

    public function __construct($baseUrl, $username, $apiToken)
    {
        $this->baseUrl = rtrim($baseUrl, '/');
        $this->username = $username;
        $this->apiToken = $apiToken;
    }

    private function makeRequest($method, $endpoint, $data = null)
    {
        $url = $this->baseUrl . $endpoint;

        $curl = curl_init();
        $headers = [
            'Authorization: Basic ' . base64_encode($this->username . ':' . $this->apiToken),
            'Content-Type: application/json',
        ];

        curl_setopt_array($curl, [
            CURLOPT_URL => $url,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_CUSTOMREQUEST => $method,
            CURLOPT_HTTPHEADER => $headers,
            CURLOPT_SSL_VERIFYHOST => 0, // Disable SSL host verification
            CURLOPT_SSL_VERIFYPEER => 0, // Disable SSL peer verification
        ]);

        if ($data) {
            curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
        }

        $response = curl_exec($curl);
        $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);

        curl_close($curl);

        if ($httpCode >= 200 && $httpCode < 300) {
            return json_decode($response, true);
        } else {
            error_log("\r\nEndpoint: " . $url, 3, SPRINT_PLUGIN_PATH . 'log/jira.log');
            error_log("\r\nHeaders: " .  print_r($headers, true), 3, SPRINT_PLUGIN_PATH . 'log/jira.log');
            error_log("\r\nResponse: " .  print_r($response, true), 3, SPRINT_PLUGIN_PATH . 'log/jira.log');
            throw new Exception("API request failed with status code $httpCode: $response");
        }
    }


    public function getAllTickets($jql = '', $fields = 'summary,assignee,status,priority')
    {
        $endpoint = "/rest/api/3/search?jql=" . urlencode($jql) . "&fields=" . urlencode($fields);
        return $this->makeRequest('GET', $endpoint);
    }

    public function getBoardById($boardId)
    {
        $endpoint = "/rest/agile/1.0/board/$boardId";
        return $this->makeRequest('GET', $endpoint);
    }

    public function getSprintsByBoard($boardId)
    {
        $endpoint = "/rest/agile/1.0/board/$boardId/sprint";
        return $this->makeRequest('GET', $endpoint);
    }

    public function getCurrentSprint($boardId)
    {
        $sprints = $this->getSprintsByBoard($boardId);
        foreach ($sprints['values'] as $sprint) {
            if ($sprint['state'] === 'active') {
                return $sprint;
            }
        }
        return null;
    }

    public function getTicketsInSprint($sprintId)
    {
        $endpoint = "/rest/agile/1.0/sprint/$sprintId/issue";
        return $this->makeRequest('GET', $endpoint);
    }

    public function getCommentsOnTicket($issueKey)
    {
        $endpoint = "/rest/api/3/issue/$issueKey/comment";
        return $this->makeRequest('GET', $endpoint);
    }

    // New function to fetch ticket details by ticket ID
    public function getTicketDetails($ticketId)
    {
        $endpoint = "/rest/api/3/issue/$ticketId";
        return $this->makeRequest('GET', $endpoint);
    }
}

# Usage Example
/*
try {
    $jira = new JiraAPI('https://your-domain.atlassian.net', 'your-email@example.com', 'your-api-token');

    # Fetch ticket by id
    $ticketDetails = $jira->getTicketDetails('TICKET-123');
    print_r($ticketDetails);
    
    # Fetch all tickets
    $tickets = $jira->getAllTickets('project = TEST');
    print_r($tickets);

    # Fetch board by ID
    $board = $jira->getBoardById(1);
    print_r($board);

    # Fetch sprints for a board
    $sprints = $jira->getSprintsByBoard(1);
    print_r($sprints);

    # Fetch current sprint
    $currentSprint = $jira->getCurrentSprint(1);
    print_r($currentSprint);

    # Fetch tickets in a sprint
    $ticketsInSprint = $jira->getTicketsInSprint($currentSprint['id']);
    print_r($ticketsInSprint);

    # Fetch comments on a ticket
    $comments = $jira->getCommentsOnTicket('TEST-123');
    print_r($comments);

} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
*/
