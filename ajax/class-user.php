<?php
if ( ! class_exists( 'SPRINT_Ajax_User' ) && defined( 'ABSPATH' ) ) {

// ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);

/**
 * SPRINT_Ajax_User loader class.
 */
class SPRINT_Ajax_User {

    function __construct() {
        self::set_filters();
    }

    function set_filters() {
        add_action( 'wp_ajax_sprint_users', [$this,'sprint_users'] );
        add_action( 'wp_ajax_add_user', [$this,'add_user'] );
        add_action( 'wp_ajax_update_user', [$this,'update_user'] );
        add_action( 'wp_ajax_delete_user', [$this,'delete_user'] );
    }

    function sprint_users() {
        $args = [
            'orderby' => 'ID', // Order by user ID
            'order'   => 'DESC', // ASC for ascending order, DESC for descending
        ];
        if(isset($_POST['id']) && !empty($_POST['id'])) {
            $args['include'] = [$_POST['id']];
        }
        $users = get_users($args);
        // $log_file = WP_CONTENT_DIR . "/sprint.log";
        // error_log(print_r(get_user_meta($user->data->ID), true) . PHP_EOL, 3, $log_file);
        $users = array_map(function ($user) {
            return [
                'id' => $user->data->ID,
                'first_name' => !empty(get_user_meta($user->data->ID, 'first_name', true)) ? get_user_meta($user->data->ID, 'first_name', true) : $user->data->display_name,
                'last_name' => get_user_meta($user->data->ID, 'last_name', true),
                'username' => $user->data->user_login,
                'user_email' => $user->data->user_email,
                'display_name' => $user->data->display_name,
                'roles' => $user->roles[0],
            ];
        }, $users);
        wp_send_json_success($users);
    }

    function add_user() {
        // Ensure all required fields are provided
        if (
            empty($_POST['user_email']) ||
            empty($_POST['password'])
        ) {
            wp_send_json_error(['message' => 'Email and Password are required.']);
        }

        // Sanitize input data
        $first_name = sanitize_text_field($_POST['first_name']);
        $last_name = sanitize_text_field($_POST['last_name']);
        $user_email = sanitize_email($_POST['user_email']);
        $username = sanitize_text_field($_POST['username']);
        $password = sanitize_text_field($_POST['password']);
        $display_name = sanitize_text_field($_POST['display_name']);
        $roles = isset($_POST['roles']) ? sanitize_text_field($_POST['roles']) : 'subscriber';

        // Validate email
        if (!is_email($user_email)) {
            wp_send_json_error(['message' => 'Invalid email address.']);
        }

        // Check if the user already exists
        if (email_exists($user_email) || username_exists($username)) {
            wp_send_json_error(['message' => 'User with this email or username already exists.']);
        }

        // Create the user
        $user_id = wp_create_user($username, $password, $user_email);

        if (is_wp_error($user_id)) {
            wp_send_json_error(['message' => $user_id->get_error_message()]);
        }

        // Update user meta data
        wp_update_user([
            'ID' => $user_id,
            'first_name' => $first_name,
            'last_name' => $last_name,
            'display_name' => $display_name
        ]);

        // Assign the role to the new user
        $user = new WP_User($user_id);
        $user->set_role($roles);

        // Send a success response
        return $this->sprint_users();
    }

    
    function update_user() {
        // Verify if the required data is present
        if (!isset($_POST['id']) || empty($_POST['id'])) {
            wp_send_json_error(['message' => 'User ID is required.']);
        }

        $user_id = intval($_POST['id']);
        $user_data = [
            'ID'           => $user_id,
            'first_name'   => sanitize_text_field($_POST['first_name']),
            'last_name'    => sanitize_text_field($_POST['last_name']),
            'user_email'   => sanitize_email($_POST['user_email']),
            'display_name' => sanitize_text_field($_POST['display_name']),
        ];

        // Update the user
        $result = wp_update_user($user_data);

        if (is_wp_error($result)) {
            wp_send_json_error(['message' => $result->get_error_message()]);
        }

        // Update the user's role if provided
        if (isset($_POST['roles']) && !empty($_POST['roles'])) {
            $roles = sanitize_text_field($_POST['roles']);
            $user = get_userdata($user_id);
            if ($user) {
                $user->set_role($roles);
            }
        }

        // Update the password if provided
        if (!empty($_POST['password'])) {
            wp_set_password($_POST['password'], $user_id);
        }
        unset($_POST);
        // Send a success response
        return $this->sprint_users();
    }

    function delete_user() {
        $user_id = intval($_POST['id']);
        wp_delete_user($user_id, 1);
        unset($_POST);
        // Send a success response
        return $this->sprint_users();
    }
}

/**
 * Instantiate the DSWLights loader class.
 *
 * @since 2.0
 */
new SPRINT_Ajax_User();
}