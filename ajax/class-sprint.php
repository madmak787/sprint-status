<?php
if ( ! class_exists( 'SPRINT_Ajax_Sprint' ) && defined( 'ABSPATH' ) ) {

// ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);

/**
 * SPRINT_Ajax_Sprint loader class.
 */
class SPRINT_Ajax_Sprint {

    function __construct() {
        self::set_filters();
    }

    function set_filters() {
        add_action( 'wp_ajax_sprint_sprints', [$this,'sprint_sprints'] );
        add_action( 'wp_ajax_add_sprint', [$this,'add_sprint'] );
        add_action( 'wp_ajax_update_sprint', [$this,'update_sprint'] );
        add_action( 'wp_ajax_delete_sprint', [$this,'delete_sprint'] );
    }

    function sprint_sprints() {
        $excerpt = isset($_REQUEST['excerpt']) && !empty($_REQUEST['excerpt']) ? $_REQUEST['excerpt'] : false;
        if(isset($_POST['id']) && !empty($_POST['id'])) {
            $sprints = [sp_fetch_one(SPRINT_TABLE, ['id' => $_POST['id']])];
        } else {
            $sprints = sp_fetch_all(SPRINT_TABLE, 'id', 'DESC');
            $sprints = array_map(function ($sprint) use ($excerpt) {
                global $wpdb;
                unset($sprint['created_at']);
                $sprint['description'] = $excerpt ? substr($sprint['description'], 0, $excerpt) : $sprint['description'];
                $query = $wpdb->prepare(
                    "SELECT tickets.* FROM {$wpdb->prefix}" . TICKETS_TABLE . " AS tickets WHERE tickets.id IN (
                        SELECT relation.ticket_id FROM {$wpdb->prefix}" . RELATIONSHIP_TABLE . " AS relation WHERE relation.sprint_id = %d
                    )", $sprint['id']
                );
                $tickets = $wpdb->get_results($query);
                $sprint['tickets'] = count($tickets);
                return $sprint;
            }, $sprints);
        }
        wp_send_json_success($sprints);
    }

    function add_sprint() {
        unset($_POST['id']);
        sp_insert(SPRINT_TABLE, $_POST);

        // Send a success response
        return $this->sprint_sprints();
    }

    
    function update_sprint() {
        // Verify if the required data is present
        if (!isset($_POST['id']) || empty($_POST['id'])) {
            wp_send_json_error(['message' => 'Sprint ID is required.']);
        }

        sp_update(SPRINT_TABLE, $_POST, ['id' => $_POST['id']]);
        unset($_POST);
        // Send a success response
        return $this->sprint_sprints();
    }

    function delete_sprint() {
        sp_delete(SPRINT_TABLE, ['id' => $_POST['id']]);
        unset($_POST);
        // Send a success response
        return $this->sprint_sprints();
    }
}

/**
 * Instantiate the DSWLights loader class.
 *
 * @since 2.0
 */
new SPRINT_Ajax_Sprint();
}