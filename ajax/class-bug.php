<?php
if ( ! class_exists( 'SPRINT_Ajax_Bug' ) && defined( 'ABSPATH' ) ) {

// ini_set('display_errors', 0); ini_set('display_startup_errors', 0); error_reporting(0);

/**
 * SPRINT_Ajax_Bug loader class.
 */
class SPRINT_Ajax_Bug {

    function __construct() {
        self::set_filters();
    }

    function set_filters() {
        add_action( 'wp_ajax_ticket_bugs', [$this,'ticket_bugs'] );
        add_action( 'wp_ajax_add_bug', [$this,'add_bug'] );
        add_action( 'wp_ajax_update_bug', [$this,'update_bug'] );
        add_action( 'wp_ajax_delete_bug', [$this,'delete_bug'] );
        
        add_action( 'wp_ajax_bug_by_ticket_id', [$this,'bug_by_ticket_id'] );
    }

    function ticket_bugs() {
        $excerpt = isset($_REQUEST['excerpt']) && !empty($_REQUEST['excerpt']) ? $_REQUEST['excerpt'] : false;
        if(isset($_POST['id']) && !empty($_POST['id'])) {
            $bugs = [sp_fetch_one(ISSUES_TABLE, ['id' => $_POST['id']])];
        } else {
            $bugs = sp_fetch_all(ISSUES_TABLE, 'id', 'DESC');
            $bugs = array_map(function ($bug) use ($excerpt) {
                $bug['description'] = $excerpt ? substr($bug['description'], 0, $excerpt) . ( strlen($bug['description'])>$excerpt ? '...' : '' ) : $bug['description'];
                $user = get_user_by( 'id', $bug['reported_by'] );
                $bug['reported_by'] = $user->user_email;
                $sprint = sp_fetch_one(SPRINT_TABLE, ['id' => $bug['sprint_id']]);
                $bug['sprint_name'] = $sprint['name'];
                $ticket = sp_fetch_one(TICKETS_TABLE, ['id' => $bug['ticket_id']]);
                $bug['ticket_name'] = $ticket['name'];
                $bug['type'] = BTYPES[$bug['type']];
                unset($bug['created_at']);
                unset($bug['user_id']);
                unset($bug['sprint_id']);
                unset($bug['ticket_id']);
                return $bug;
            }, $bugs);
        }
        
        wp_send_json_success($bugs);
    }

    function bug_by_ticket_id() {
        $sprint_id = (isset($_POST['sprint_id']) && !empty($_POST['sprint_id']))?$_POST['sprint_id']:false;
        $ticket_id = (isset($_POST['ticket_id']) && !empty($_POST['ticket_id']))?$_POST['ticket_id']:false;
        $bugs = sp_fetch_one(ISSUES_TABLE, ['sprint_id' => $sprint_id, 'ticket_id' => $ticket_id]);
        
        wp_send_json_success($bugs);
    }

    function add_bug() {
        unset($_POST['id']);

        $bug = [
            'description' => str_replace('\\', '', $_POST['description']),
            'sprint_id' => $_POST['sprint_id'],
            'ticket_id' => $_POST['ticket_id'],
            'jira_id' => $_POST['jira_id'],
            'reported_by' => $_POST['reported_by'],
        ];
        $bug_id = sp_insert(ISSUES_TABLE, $bug);
        // Send a success response
        return $this->ticket_bugs();
    }

    function update_bug() {
        // Verify if the required data is present
        if (!isset($_POST['id']) || empty($_POST['id'])) {
            wp_send_json_error(['message' => 'Bug ID is required.']);
        }
        // Update bug details
        $bug = [
            'description' => str_replace('\\', '', $_POST['description']),
            'sprint_id' => $_POST['sprint_id'],
            'ticket_id' => $_POST['ticket_id'],
            'jira_id' => $_POST['jira_id'],
            'reported_by' => $_POST['reported_by'],
        ];
        sp_update(ISSUES_TABLE, $bug, ['id' => $_POST['id']]);
        unset($_POST);
        // Send a success response
        $_REQUEST['excerpt'] = 220;
        return $this->ticket_bugs();
    }

    function delete_bug() {
        sp_delete(ISSUES_TABLE, ['id' => $_POST['id']]);
        unset($_POST);
        // Send a success response
        $_REQUEST['excerpt'] = 220;
        return $this->ticket_bugs();
    }
}

/**
 * Instantiate the DSWLights loader class.
 *
 * @since 2.0
 */
new SPRINT_Ajax_Bug();
}