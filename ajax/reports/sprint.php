<?php
$sprints = sp_fetch_all(SPRINT_TABLE, 'id', "ASC");
foreach($sprints as $sprint) {
    $query = $wpdb->prepare(
        "SELECT tickets.* FROM {$wpdb->prefix}" . TICKETS_TABLE . " AS tickets WHERE tickets.id IN (
            SELECT relation.ticket_id FROM {$wpdb->prefix}" . RELATIONSHIP_TABLE . " AS relation WHERE relation.sprint_id = %d
        )", $sprint['id']
    );
    $tickets = $wpdb->get_results($query);
    $tickets = array_map(function ($ticket) {
        $user = get_user_by( 'id', $ticket['user_id'] );
        $ticket['user'] = $user->display_name;
        $ticket['type'] = ucfirst(TTYPES[$ticket['type']]);
        unset($ticket['created_at']);
        unset($ticket['user_id']);
        return $ticket;
    }, $tickets);
    $data[] = [
        'name' => $sprint['name'],
        'data' => $tickets
    ];
}
