<?php
/**
 * @package SPRINT
 * @version 1.0.0
 */
/**
 * Plugin Name:       Sprint Status
 * Plugin URI:        https://khanamir.me/
 * Description:       The "Sprint Status" WordPress plugin is a powerful tool designed for agile teams and project managers to seamlessly integrate Jira ticket data into WordPress. This plugin empowers users with a dedicated admin interface to track sprint progress, analyze performance, and generate insightful reports directly from their website.
 * Version:           1.0.0
 * Requires at least: 5.2
 * Requires PHP:      8.0
 * Author:            madmak787
 * Author URI:        https://khanamir.me/
 * License:           GPL v2 or later
 * License URI:       https://www.gnu.org/licenses/gpl-2.0.html
 * Text Domain:       sprint
 * Domain Path:       /languages
 */

$options = get_option( 'sprint' ) ?? ['enable'=>false,'title'=>'Sprint Status'];

const SPRINT_PLUGIN_NAME = 'sprint';
const SPRINT_VERSION = '1.0.0';
const SPRINT_URL = 'sprint';
const SPRINT_TABLE = 'sprint';
const TICKETS_TABLE = 'sprint_tickets';
const REVISION_TABLE = 'sprint_tickets_revisions';
const RELATIONSHIP_TABLE = 'sprint_to_tickets';
const ISSUES_TABLE = 'sprint_issues';
const HOURS_TABLE = 'sprint_hours';

define( 'SPRINT_NAME', $options['title'] );
define( 'SPRINT_PLUGIN_FILE', plugin_basename( __FILE__ ) );
define( 'SPRINT_PLUGIN_PATH', trailingslashit( plugin_dir_path( __FILE__ ) ) );
define( 'SPRINT_PLUGIN_URL', trailingslashit( plugins_url( basename( plugin_dir_path( __FILE__ ) ), basename( __FILE__ ) ) ) );
define( 'SPRINT_MAIN_URL', site_url('/') );

// load PhpSpreadsheet
require_once 'lib/vendor/autoload.php';
// use PhpOffice\PhpSpreadsheet\Spreadsheet;
// use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// Load Everything
require_once 'classes/load-classes.php';
require_once 'ajax/index.php';

require_once 'installation.php';
