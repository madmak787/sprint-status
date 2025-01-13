<?php
if ( ! class_exists( 'SPRINT_Ajax_Hour' ) && defined( 'ABSPATH' ) ) {

// ini_set('display_errors', 0); ini_set('display_startup_errors', 0); error_reporting(0);

/**
 * SPRINT_Ajax_Hour loader class.
 */
class SPRINT_Ajax_Hour {

    function __construct() {
        self::set_filters();
    }

    function set_filters() {
        add_action( 'wp_ajax_ticket_hours', [$this,'ticket_hours'] );
        add_action( 'wp_ajax_add_hour', [$this,'add_hour'] );
        add_action( 'wp_ajax_update_hour', [$this,'update_hour'] );
        add_action( 'wp_ajax_delete_hour', [$this,'delete_hour'] );
    }

    function ticket_hours() {
        $excerpt = isset($_REQUEST['excerpt']) && !empty($_REQUEST['excerpt']) ? $_REQUEST['excerpt'] : false;
        if(isset($_POST['id']) && !empty($_POST['id'])) {
            $hours = [sp_fetch_one(HOURS_TABLE, ['id' => $_POST['id']])];
        } else {
            $hours = sp_fetch_all(HOURS_TABLE, 'id', 'DESC');
            $hours = array_map(function ($hour) use ($excerpt) {
                $hour['comment'] = $excerpt ? substr($hour['comment'], 0, $excerpt) . ( strlen($hour['comment'])>$excerpt ? '...' : '' ) : $hour['comment'];
                $user = get_user_by( 'id', $hour['user_id'] );
                $hour['reported_by'] = $user->user_email;
                $sprint = sp_fetch_one(SPRINT_TABLE, ['id' => $hour['sprint_id']]);
                $hour['sprint_name'] = $sprint['name'];
                $ticket = sp_fetch_one(TICKETS_TABLE, ['id' => $hour['ticket_id']]);
                $hour['ticket_name'] = $ticket['name'];
                unset($hour['created_at']);
                unset($hour['user_id']);
                unset($hour['sprint_id']);
                unset($hour['ticket_id']);
                return $hour;
            }, $hours);
        }
        
        wp_send_json_success($hours);
    }

    function add_hour() {
        unset($_POST['id']);

        $hour = [
            'sprint_id' => $_POST['sprint_id'],
            'ticket_id' => $_POST['ticket_id'],
            'jira_id' => $_POST['jira_id'],
            'user_id' => $_POST['user_id'],
            'minutes' => $_POST['minutes'],
            'comment' => str_replace('\\', '', $_POST['comment']),
        ];
        $hour_id = sp_insert(HOURS_TABLE, $hour);
        // Send a success response
        return $this->ticket_hours();
    }

    function update_hour() {
        // Verify if the required data is present
        if (!isset($_POST['id']) || empty($_POST['id'])) {
            wp_send_json_error(['message' => 'Hour ID is required.']);
        }
        // Update hour details
        $hour = [
            'sprint_id' => $_POST['sprint_id'],
            'ticket_id' => $_POST['ticket_id'],
            'jira_id' => $_POST['jira_id'],
            'user_id' => $_POST['user_id'],
            'minutes' => $_POST['minutes'],
            'comment' => str_replace('\\', '', $_POST['comment']),
        ];
        sp_update(HOURS_TABLE, $hour, ['id' => $_POST['id']]);
        unset($_POST);
        // Send a success response
        return $this->ticket_hours();
    }

    function delete_hour() {
        sp_delete(HOURS_TABLE, ['id' => $_POST['id']]);
        unset($_POST);
        // Send a success response
        return $this->ticket_hours();
    }
}

/**
 * Instantiate the DSWLights loader class.
 *
 * @since 2.0
 */
new SPRINT_Ajax_Hour();
}