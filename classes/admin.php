<?php
if (!class_exists('SPRINT_Admin') && defined('ABSPATH')) {

    /**
     * SPRINT_Admin loader class.
     */
    class SPRINT_Admin
    {

        function __construct()
        {
            self::set_filters();
        }

        function set_filters()
        {
            add_action('admin_menu', [$this, 'sprint_admin'], 13);

            add_filter('manage_users_columns', [$this, 'sprint_access_modify_user_table']);
            add_filter('manage_users_custom_column', [$this, 'sprint_new_modify_user_table_row'], 10, 3);
            add_filter('user_row_actions', [$this, 'sprint_user_status_action_links'], 10, 2);
        }

        function sprint_admin()
        {
            add_menu_page(__('Sprint Status', 'sprint'), __('Sprint Status', 'sprint'), 'manage_options', 'sprint-dashboard', [$this, 'sprint_config'], 'dashicons-welcome-widgets-menus', 90);
        }

        function sprint_config()
        {
            $options = get_option('sprint_settings');
            require_once SPRINT_PLUGIN_PATH . '/templates/admin/configurations.php';
        }

        //Add User Access Status To Users Table
        function sprint_access_modify_user_table($column)
        {
            $column['sprint_canvas_status'] = 'Canvas Access';
            return $column;
        }
        function sprint_new_modify_user_table_row($val, $column_name, $user_id)
        {
            switch ($column_name) {
                case 'sprint_canvas_status':
                    return get_user_meta($user_id, 'sprint-canvas-access', true) ? 'Allowed' : 'Not Allowed';
                default:
            }
            return $val;
        }
        function sprint_user_status_action_links($actions, $user_object)
        {
            $qs = '';
            if (isset($_GET)) {
                foreach ($_GET as $gk => $gv) {
                    if ($gk == 'canvas_status' || $gk == 'user')
                        continue;
                    $qs .= '&' . $gk . '=' . $gv;
                }
            }
            if (get_user_meta($user_object->ID, 'sprint-canvas-access', true)) {
                $actions['sprint_canvas_status_link'] = "<a class='canvas-access' href='" . admin_url("users.php?canvas_status=0&user=" . $user_object->ID . $qs) . "'>" . __('Deny', 'sprint') . "</a>";
            } else {
                $actions['sprint_canvas_status_link'] = "<a class='canvas-access' href='" . admin_url("users.php?canvas_status=1&user=" . $user_object->ID . $qs) . "'>" . __('Allow', 'sprint') . "</a>";
            }
            return $actions;
        }
    }

    /**
     * Instantiate the SPRINTLights loader class.
     *
     * @since 2.0
     */
    new SPRINT_Admin();
}
