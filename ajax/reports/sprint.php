<?php
global $wpdb;
$sprints = sp_fetch_all(SPRINT_TABLE, 'id', "DESC");
foreach($sprints as $i=>$sprint) {
    $query = $wpdb->prepare(
        "SELECT tickets.* FROM {$wpdb->prefix}" . TICKETS_TABLE . " AS tickets WHERE tickets.id IN (
            SELECT relation.ticket_id FROM {$wpdb->prefix}" . RELATIONSHIP_TABLE . " AS relation WHERE relation.sprint_id = %d
        )", $sprint['id']
    );
    $tickets = $wpdb->get_results($query, ARRAY_A);
    $sprint_id = $sprint['id'];
    $tickets = array_map(function ($ticket) use ($sprint_id) {
        $user = get_user_by('id', $ticket['user_id']);
        // $return['description'] = $ticket['description'];
        $return['ticket_ID'] = $ticket['jira_id'];
        $return['summary'] = $ticket['description'];
        $return['assignee'] = $user->display_name;
        $return['estimation'] = $ticket['estimates'];
        $return['type'] = ucfirst(TTYPES[$ticket['type']]);
        
        $revision = sp_fetch_one(REVISION_TABLE, ['sprint_id' => $sprint_id, 'ticket_id' => $ticket['id']]);
        $return['status'] = unslug($revision['status']);
        $return['particulars'] = $revision['comment'];
        $return['%'] = $revision['percentage'];
        
        $issues = sp_fetch(ISSUES_TABLE, ['sprint_id' => $sprint_id, 'ticket_id' => $ticket['id']]);
        $return['Issues/Improvements'] = count($issues) || '';
        $reporters = [];
        foreach($issues as $issue) {
            $reported_by = get_user_by('id', $issue['reported_by']);
            $reporters[] = $reported_by->display_name;
        }
        $reporters = array_unique($reporters);
        $return['Reported By'] = implode('/', $reporters);
        
        return $return;
    }, $tickets);
    if(count($tickets) == 0) continue;
    $data[] = [
        'name' => $sprint['name'],
        'data' => $tickets
    ];

    if($i==12) break;
}
