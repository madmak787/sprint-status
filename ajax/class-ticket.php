<?php
if ( ! class_exists( 'SPRINT_Ajax_Ticket' ) && defined( 'ABSPATH' ) ) {

// ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);

/**
 * SPRINT_Ajax_Ticket loader class.
 */
class SPRINT_Ajax_Ticket {

    function __construct() {
        self::set_filters();
    }

    function set_filters() {
        add_action( 'wp_ajax_sprint_all_tickets', [$this,'sprint_all_tickets'] );
        add_action( 'wp_ajax_sprint_tickets', [$this,'sprint_tickets'] );
        add_action( 'wp_ajax_selected_sprint', [$this,'selected_sprint'] );
        add_action( 'wp_ajax_add_ticket', [$this,'add_ticket'] );
        add_action( 'wp_ajax_update_ticket', [$this,'update_ticket'] );
        add_action( 'wp_ajax_delete_ticket', [$this,'delete_ticket'] );
        
        add_action( 'wp_ajax_get_jira_details', [$this,'get_jira_details'] );
    }

    function sprint_all_tickets() {
        $excerpt = isset($_REQUEST['excerpt']) && !empty($_REQUEST['excerpt']) ? $_REQUEST['excerpt'] : false;
        if(isset($_POST['id']) && !empty($_POST['id'])) {
            global $wpdb;
            // $ticket_only = sp_fetch_one(TICKETS_TABLE, ['id' => $_POST['id']]);
            // $ticket_with_sprint = 

            $id = $jira_id = $_POST['id'];
            // Append sprint specific data
            $query = $wpdb->prepare(
                "SELECT 
                    tickets.*,
                    GROUP_CONCAT(DISTINCT relation.sprint_id) AS sprint_ids,
                    revision.sprint_id AS selected_sprint,
                    revision.status AS status,
                    revision.percentage AS percentage,
                    revision.comment AS comment
                FROM 
                    {$wpdb->prefix}" . TICKETS_TABLE . " AS tickets
                LEFT JOIN 
                    {$wpdb->prefix}" . RELATIONSHIP_TABLE . " AS relation
                ON 
                    tickets.id = relation.ticket_id
                LEFT JOIN 
                    {$wpdb->prefix}" . REVISION_TABLE . " AS revision
                ON 
                    relation.sprint_id = revision.sprint_id AND tickets.id = revision.ticket_id
                WHERE 
                    tickets.id = %d OR tickets.jira_id = %s
                GROUP BY 
                    tickets.id",
                $id, // Replace with the ticket ID or null
                $jira_id // Replace with the Jira ID or null
            );
            
            // Fetch the results
            $tickets = $wpdb->get_results($query, ARRAY_A);
            
            // Format sprint_ids as an array
            $tickets = array_map(function ($ticket) use ($excerpt) {
                $ticket['sprint'] = explode(',', $ticket['sprint_ids']);
                $ticket['action'] = 'update_ticket';
                return $ticket;
            }, $tickets);
            
        } else {
            $tickets = sp_fetch_all(TICKETS_TABLE, 'id', 'DESC');
            $tickets = array_map(function ($ticket) use ($excerpt) {
                $ticket['description'] = $excerpt ? substr($ticket['description'], 0, $excerpt) . ( strlen($ticket['description'])>$excerpt ? '...' : '' ) : $ticket['description'];
                $user = get_user_by( 'id', $ticket['user_id'] );
                $ticket['user'] = $user->display_name;
                $ticket['type'] = ucfirst(TTYPES[$ticket['type']]);
                unset($ticket['created_at']);
                unset($ticket['user_id']);
                return $ticket;
            }, $tickets);
        }
        wp_send_json_success($tickets);
    }

    function sprint_tickets() {
        global $wpdb;
        $excerpt = isset($_REQUEST['excerpt']) && !empty($_REQUEST['excerpt']) ? $_REQUEST['excerpt'] : false;
        $sprint_id = (isset($_POST['sprint_id']) && !empty($_POST['sprint_id']))?$_POST['sprint_id']:false;
        if($sprint_id) {
            // Append sprint specific data
            $query = $wpdb->prepare(
                "SELECT tickets.* FROM {$wpdb->prefix}" . TICKETS_TABLE . " AS tickets WHERE tickets.id IN (
                    SELECT relation.ticket_id FROM {$wpdb->prefix}" . RELATIONSHIP_TABLE . " AS relation WHERE relation.sprint_id = %d
                )", $sprint_id
            );
            $tickets = $wpdb->get_results($query, ARRAY_A);
            $tickets = array_map(function ($ticket) use ($excerpt) {
                unset($ticket['created_at']);
                $ticket['name'] = $ticket['name'] . "(" . $ticket['jira_id'] . ")";
                $ticket['description'] = $excerpt ? substr($ticket['description'], 0, $excerpt) : $ticket['description'];
                return $ticket;
            }, $tickets);
            wp_send_json_success($tickets);
        }
    }

    function selected_sprint() {
        $ticket_id = (isset($_POST['ticket_id']) && !empty($_POST['ticket_id']))?$_POST['ticket_id']:false;
        $sprint_id = (isset($_POST['sprint_id']) && !empty($_POST['sprint_id']))?$_POST['sprint_id']:false;
        $return['selected_sprint'] = 0;
        $return['comment'] = '';
        $return['percentage'] = 0;
        $return['status'] = '';

        if($ticket_id && $sprint_id) {
            // Append sprint specific data
            $selected = sp_search(REVISION_TABLE, ['ticket_id' => ['=', $ticket_id], 'sprint_id' => ['=', $sprint_id]]);
            if(!empty($selected)) {
                $return['selected_sprint'] = $selected[0]['sprint_id'];
                $return['comment'] = $selected[0]['comment'];
                $return['percentage'] = $selected[0]['percentage'];
                $return['status'] = $selected[0]['status'];
            }
        }
        wp_send_json_success($return);
    }

    function add_ticket() {
        unset($_POST['id']);

        if(!in_array($_POST['selected_sprint'], $_POST['sprint'])) {
            wp_send_json_error('Selected Sprint is not assigned to ticket.');
        }

        $ticket = [
            'jira_id' => $_POST['jira_id'],
            'user_id' => $_POST['user_id'],
            'name' => $_POST['name'],
            'description' => str_replace('\\', '', $_POST['description']),
            'estimates' => $_POST['estimates'],
        ];
        $ticket_id = sp_insert(TICKETS_TABLE, $ticket);
        // Add revisions
        if(isset($_POST['sprint'][0]) && !empty($_POST['sprint'][0])) {
            foreach($_POST['sprint'] as $s) {
                $relation = [
                    'sprint_id' => $s,
                    'ticket_id' => $ticket_id,
                    'jira_id' => $_POST['jira_id'],
                ];
                sp_insert(RELATIONSHIP_TABLE, $relation);
            }
        }
        // Add specific statuses
        $revision = [
            'sprint_id' => $_POST['selected_sprint'],
            'jira_id' => $_POST['jira_id'],
            'ticket_id' => $ticket_id,
            'status' => $_POST['status'],
            'percentage' => $_POST['percentage'],
            'comment' => $_POST['comment'],
        ];
        sp_insert(REVISION_TABLE, $revision);
        // Send a success response
        $_REQUEST['excerpt'] = 220;
        return $this->sprint_all_tickets();
    }

    function update_ticket() {
        // Verify if the required data is present
        if (!isset($_POST['id']) || empty($_POST['id'])) {
            wp_send_json_error(['message' => 'Ticket ID is required.']);
        }
        if(!in_array($_POST['selected_sprint'], $_POST['sprint'])) {
            wp_send_json_error('Selected Sprint is not assigned to ticket.');
        }
        // Update ticket details
        $ticket = [
            // 'jira_id' => $_POST['jira_id'],
            'user_id' => $_POST['user_id'],
            'name' => $_POST['name'],
            'description' => str_replace('\\', '', $_POST['description']),
            'estimates' => $_POST['estimates'],
        ];
        sp_update(TICKETS_TABLE, $ticket, ['id' => $_POST['id']]);
        // Update revisions
        if(isset($_POST['sprint'][0]) && !empty($_POST['sprint'][0])) {
            sp_delete(RELATIONSHIP_TABLE, ['ticket_id' => $_POST['id']]);
            foreach($_POST['sprint'] as $s) {
                $relation = [
                    'sprint_id' => $s,
                    'ticket_id' => $_POST['id'],
                    'jira_id' => $_POST['jira_id'],
                ];
                sp_insert(RELATIONSHIP_TABLE, $relation, );
            }
        }
        // Add specific statuses
        $revision = [
            'sprint_id' => $_POST['selected_sprint'],
            'jira_id' => $_POST['jira_id'],
            'ticket_id' => $_POST['id'],
            'status' => $_POST['status'],
            'percentage' => $_POST['percentage'],
            'comment' => $_POST['comment'],
        ];
        
        if(sp_fetch_one(REVISION_TABLE, ['sprint_id' => $_POST['selected_sprint'], 'ticket_id' => $_POST['id']])) {
            sp_update(REVISION_TABLE, $revision, ['sprint_id' => $_POST['selected_sprint'], 'ticket_id' => $_POST['id']]);
        } else {
            sp_insert(REVISION_TABLE, $revision);
        }

        unset($_POST);
        // Send a success response
        $_REQUEST['excerpt'] = 220;
        return $this->sprint_all_tickets();
    }

    function delete_ticket() {
        sp_delete(TICKETS_TABLE, ['id' => $_POST['id']]);
        unset($_POST);
        // Send a success response
        $_REQUEST['excerpt'] = 220;
        return $this->sprint_all_tickets();
    }

    function get_jira_details() {
        // check if ticket exists
        global $wpdb;
        $id = $jira_id = $_POST['id'];
        // Append sprint specific data
        $query = $wpdb->prepare(
            "SELECT 
                tickets.*,
                GROUP_CONCAT(DISTINCT relation.sprint_id) AS sprint_ids,
                revision.sprint_id AS selected_sprint,
                revision.status AS status,
                revision.percentage AS percentage,
                revision.comment AS comment
            FROM 
                {$wpdb->prefix}" . TICKETS_TABLE . " AS tickets
            LEFT JOIN 
                {$wpdb->prefix}" . RELATIONSHIP_TABLE . " AS relation
            ON 
                tickets.id = relation.ticket_id
            LEFT JOIN 
                {$wpdb->prefix}" . REVISION_TABLE . " AS revision
            ON 
                relation.sprint_id = revision.sprint_id AND tickets.id = revision.ticket_id
            WHERE 
                tickets.id = %d OR tickets.jira_id = %s
            GROUP BY 
                tickets.id",
            $id, // Replace with the ticket ID or null
            $jira_id // Replace with the Jira ID or null
        );
        
        // Fetch the results
        $tickets = $wpdb->get_results($query, ARRAY_A);
        
        // Format sprint_ids as an array
        $tickets = array_map(function ($ticket) {
            $ticket['sprint'] = explode(',', $ticket['sprint_ids']);
            $ticket['action'] = 'update_ticket';
            return $ticket;
        }, $tickets);

        if($tickets) {
            wp_send_json_success($tickets[0]);
        } else {
            // fetch details from jira
            $ji = get_option('sprint_jira');
            if(!empty($ji['token'])) {
                $jira = new JiraAPI($ji['domain'], $ji['email'], $ji['token']);
                $ticketDetails = $jira->getTicketDetails($_POST['id']);
                $details = analyzeTicketDetails($ticketDetails);
                wp_send_json_success($details);
            }
            wp_send_json_success([]);
        }
    }
}

/**
 * Instantiate the DSWLights loader class.
 *
 * @since 2.0
 */
new SPRINT_Ajax_Ticket();
}