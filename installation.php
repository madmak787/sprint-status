<?php
register_activation_hook( SPRINT_PLUGIN_FILE, 'sprint_plugin_activate' );

function sprint_plugin_activate() {
    require_once ABSPATH . 'wp-admin/includes/upgrade.php';

    global $wpdb;
    // Set Charset Collation
    $charset_collate = $wpdb->get_charset_collate();
    
    // Create table for sprint
    $table = $wpdb->prefix . SPRINT_TABLE;
    // The DB Query
    $sql = "CREATE TABLE IF NOT EXISTS $table (
        `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(100) NOT NULL,
        `description` VARCHAR(500) NOT NULL,
        `start_date` DATE NOT NULL,
        `end_date` DATE NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) $charset_collate;";
    dbDelta($sql);

    // Create table for tickets
    $table = $wpdb->prefix . TICKETS_TABLE;
    // The DB Query
    $sql = "CREATE TABLE IF NOT EXISTS $table (
        `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
        `jira_id` VARCHAR(50) NOT NULL,
        `user_id` INT(11) NOT NULL,
        `name` VARCHAR(100) NOT NULL,
        `description` TEXT NOT NULL,
        `estimates` INT(11) NOT NULL,
        `type` INT(11) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) $charset_collate;";
    dbDelta($sql);

    // Create table for revisions
    $table = $wpdb->prefix . REVISION_TABLE;
    // The DB Query
    $sql = "CREATE TABLE IF NOT EXISTS $table (
        `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
        `sprint_id` INT(11) NOT NULL,
        `jira_id` VARCHAR(50) NOT NULL,
        `ticket_id` INT(11) NOT NULL,
        `comment` VARCHAR(500) NOT NULL,
        `status` VARCHAR(50) NOT NULL,
        `percentage` VARCHAR(10) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) $charset_collate;";
    dbDelta($sql);
    
    // Create table for sprint to tickets relationship
    $table = $wpdb->prefix . RELATIONSHIP_TABLE;
    // The DB Query
    $sql = "CREATE TABLE IF NOT EXISTS $table (
        `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
        `sprint_id` INT(11) NOT NULL,
        `ticket_id` INT(11) NOT NULL,
        `jira_id` VARCHAR(50) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) $charset_collate;";
    dbDelta($sql);

    // Create table for issues
    $table = $wpdb->prefix . ISSUES_TABLE;
    // The DB Query
    $sql = "CREATE TABLE IF NOT EXISTS $table (
        `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
        `description` VARCHAR(500) NOT NULL,
        `sprint_id` INT(11) NOT NULL,
        `ticket_id` INT(11) NOT NULL,
        `jira_id` VARCHAR(50) NOT NULL,
        `reported_by` INT(11) NOT NULL,
        `type` INT(11) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) $charset_collate;";
    dbDelta($sql);

    // Create table for hours
    $table = $wpdb->prefix . HOURS_TABLE;
    // The DB Query
    $sql = "CREATE TABLE IF NOT EXISTS $table (
        `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
        `sprint_id` INT(11) NOT NULL,
        `ticket_id` INT(11) NOT NULL,
        `jira_id` VARCHAR(50) NOT NULL,
        `user_id` INT(11) NOT NULL,
        `minutes` INT(11) NOT NULL,
        `comment` VARCHAR(500) NOT NULL,
        `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`)
    ) $charset_collate;";
    dbDelta($sql);

    // Add global settings
    update_option('sprint', ['enable'=>true, 'title'=>'Sprint Status']);
}