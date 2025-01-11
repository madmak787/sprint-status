<?php
#ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
if ( ! class_exists( 'SPRINT_Front' ) && defined( 'ABSPATH' ) ) {

/**
 * SPRINT_Front loader class.
 */
class SPRINT_Front {

    function __construct() {
        self::set_filters();
    }

    function set_filters() {
        add_filter( 'query_vars', [$this,'sprint_register_query_vars'] );
        add_action('init', [$this,'custom_rewrite_tag'], 10, 0);
        add_action('init', [$this,'sprint_custom_login'], 0);

        add_action('init', [$this,'sprint_rewrite_rules'],10,0);
        add_action( 'template_redirect', [$this,'sprint_template_redirect'], 1 );

        // Hide wp-admin
        add_action( 'admin_init', [$this, 'block_wp_admin'] );

    }

    function sprint_register_query_vars( $vars ) {
        $vars[] = SPRINT_URL;
        $vars[] = 'sprintpage';
        $vars[] = 'sprint_id';
        $vars[] = 'view';
        return $vars;
    }

    function custom_rewrite_tag() {
        add_rewrite_tag('%sprintpage%', '([^&]+)');
        add_rewrite_tag('%sprint_id%', '([^&]+)');
        add_rewrite_tag('%view%', '([^&]+)');
    }
    
    function sprint_rewrite_rules() {
        //Application Pages
        $regex = '^';
        add_rewrite_rule('([^/]*)/([^/]*)/?','index.php?' . SPRINT_URL . '=1&sprintpage=$matches[1]&sprint_id=$matches[2]','top');
        add_rewrite_rule( '([^/]*)/?$', 'index.php?'.SPRINT_URL.'=1&sprintpage=$matches[1]','top' );
        add_rewrite_rule( '^/?', 'index.php?'.SPRINT_URL.'=1', 'top');
        flush_rewrite_rules();
    }

    function sprint_custom_login() {
        if(isset($_POST['sprint-login'])) {
            $creds = [
                'user_login'    => $_POST['username'],
                'user_password' => $_POST['password'],
                'remember'      => true
            ];
            $user = wp_signon( $creds, true );
            $url = SPRINT_MAIN_URL;
            if ( is_wp_error( $user ) ) {
                $user->get_error_message();
                $url = SPRINT_MAIN_URL.'?error=true';
            } else {
                do_action( 'wp_login', $_POST['username'], $user );
            }
            wp_redirect( SPRINT_MAIN_URL );
            exit;
        }
    }

    function sprint_template_redirect() {
        $options = get_option( 'sprint' );
        $title = get_bloginfo( 'name' );
        
        if(get_query_var( SPRINT_URL )) {
            do_action('sprint_init');
            
            if ( !$options['enable'] )
                wp_die( __( 'SPRINT is disabled by the Administrator.' ) );

            if ( !is_user_logged_in() ) {
                $title = SPRINT_NAME . ' | ' . $title;
                include SPRINT_PLUGIN_PATH.'/templates/frontend/index.php';
                exit;
            }
            
            $id = '';
            switch(get_query_var( 'sprintpage' )){
                case 'dashboard':
                    $title = "Dashboard | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/dashboard.php'; exit;
                case 'sprints':
                    $title = "Sprints | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/sprint-list.php'; exit;
                case 'add-sprint':
                    $title = "Add Sprint | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/sprint-add.php'; exit;
                case 'tickets':
                    $title = "Tickets | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/ticket-list.php'; exit;
                case 'add-ticket':
                    $title = "Add Ticket | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/ticket-add.php'; exit;
                case 'bugs':
                    $title = "Bugs | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/bug-list.php'; exit;
                case 'add-bug':
                    $title = "Add Bug | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/bug-add.php'; exit;
                case 'users':
                    $title = "Users | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/user-list.php'; exit;
                case 'hours':
                    $title = "Hours | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/hour-list.php'; exit;
                case 'api':
                    $title = "API Settings | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/api.php'; exit;
                case 'reports':
                    $title = "Reports | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/reports.php'; exit;
                case 'list':
                    $title = "List | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/list.php'; exit;
                case 'form':
                    $title = "Form | $title";
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/form.php'; exit;
                case 'delete':
                    $id = get_query_var( 'sprint_id' );
                    global $wpdb;
                    $table_name = $wpdb->prefix . "sprint";
                    //SPRINT_DB::update($table_name, array('status'=>'deleted','deleted_date'=>date("d-m-Y H:i:s")), $id);
                    wp_safe_redirect ( wp_get_referer() ? wp_get_referer() : home_url('/') );
                    exit;
                default:
                    $title = SPRINT_NAME . ' | ' . $title;
                    include SPRINT_PLUGIN_PATH.'/templates/frontend/index.php'; exit;
            }
        } else {
            $title = SPRINT_NAME . ' | ' . $title;
            include SPRINT_PLUGIN_PATH.'/templates/frontend/index.php'; exit;
        }
    }

    function block_wp_admin() {
        if ( is_admin() && ! current_user_can( 'administrator' ) && ! ( defined( 'DOING_AJAX' ) && DOING_AJAX ) ) {
            wp_safe_redirect( home_url() );
            exit;
        }
    }

}

/**
 * Instantiate the SPRINT loader class.
 *
 * @since 2.0
 */
new SPRINT_Front();
}
