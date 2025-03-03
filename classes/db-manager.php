<?php
// ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
global $wpdb;
/**
 * Insert data into a table.
 */
function sp_insert($table_name, $data) {
    global $wpdb;
    unset($data['action']);
    $wpdb->insert($wpdb->prefix . $table_name, $data);
    return $wpdb->insert_id;
}

/**
 * Update data in a table.
 */
function sp_update($table_name, $data, $where) {
    global $wpdb;
    unset($data['action']);
    return $wpdb->update($wpdb->prefix . $table_name, $data, $where);
}

/**
 * Fetch a all row by condition.
 */
function sp_fetch($table_name, $where) {
    global $wpdb;
    $conditions = sp_prepare_conditions($where);
    $sql = "SELECT * FROM " . $wpdb->prefix . $table_name . " WHERE $conditions";
    $query = $wpdb->prepare($sql);
    return $wpdb->get_results($query, ARRAY_A);
}

/**
 * Fetch all rows from a table.
 */
function sp_fetch_all($table_name, $order_by = 'id', $order = 'ASC') {
    global $wpdb;

    // Validate order_by and order parameters
    $valid_order_by = preg_replace('/[^a-zA-Z0-9_]/', '', $order_by); // Allow only alphanumeric and underscores
    $valid_order = strtoupper($order) === 'DESC' ? 'DESC' : 'ASC';   // Allow only 'ASC' or 'DESC'
    $sql = "SELECT * FROM {$wpdb->prefix}$table_name ORDER BY $valid_order_by $valid_order";
    $query = $wpdb->prepare($sql);

    return $wpdb->get_results($query, ARRAY_A);
}

/**
 * Fetch a single row by condition.
 */
function sp_fetch_one($table_name, $where) {
    global $wpdb;
    $conditions = sp_prepare_conditions($where);
    $query = "SELECT * FROM " . $wpdb->prefix . $table_name . " WHERE $conditions LIMIT 1";
    return $wpdb->get_row($query, ARRAY_A);
}

/**
 * Delete rows by condition.
 */
function sp_delete($table_name, $where) {
    global $wpdb;
    return $wpdb->delete($wpdb->prefix . $table_name, $where);
}
// function sp_delete($table_name, $conditions) {
//     global $wpdb;

//     // Prepare conditions SQL using the helper function
//     $where_clause = sp_prepare_conditions_with_operators($conditions);

//     if (!$where_clause) {
//         return false; // No valid conditions provided
//     }

//     // Build and execute the delete query
//     $table_with_prefix = $wpdb->prefix . $table_name;
//     $query = "DELETE FROM `$table_with_prefix` WHERE $where_clause";

//     return $wpdb->query($query);
// }

/**
 * Search rows in a table based on conditions with flexible operators.
 */
function sp_search($table_name, $search_conditions) {
    global $wpdb;
    $conditions = sp_prepare_conditions_with_operators($search_conditions);
    $query = "SELECT * FROM " . $wpdb->prefix . $table_name . " WHERE $conditions";
    $results = $wpdb->get_results($query, ARRAY_A);
    return $results;
}

/**
 * Helper: Prepare SQL conditions for simple equals.
 */
function sp_prepare_conditions($conditions) {
    global $wpdb;
    $sql_conditions = [];
    foreach ($conditions as $key => $value) {
        $sql_conditions[] = $wpdb->prepare("`$key` = %s", $value);
    }
    return implode(' AND ', $sql_conditions);
}

/**
 * Helper: Prepare SQL conditions with flexible operators.
 */
function sp_prepare_conditions_with_operators($conditions) {
    global $wpdb;
    $sql_conditions = [];
    foreach ($conditions as $key => $value) {
        if (is_array($value) && count($value) === 2) {
            $operator = strtoupper($value[0]);
            $val = $value[1];

            // Validate operator
            $allowed_operators = ['=', '!=', '<', '<=', '>', '>=', 'LIKE', 'NOT LIKE', 'IN', 'NOT IN'];
            if (!in_array($operator, $allowed_operators)) {
                continue;
            }

            // Handle IN/NOT IN
            if (in_array($operator, ['IN', 'NOT IN']) && is_array($val)) {
                $placeholders = implode(',', array_fill(0, count($val), '%s'));
                $sql_conditions[] = $wpdb->prepare("`$key` $operator ($placeholders)", ...$val);
            } else {
                $sql_conditions[] = $wpdb->prepare("`$key` $operator %s", $val);
            }
        }
    }
    return implode(' AND ', $sql_conditions);
}

/**
 * Debug the last query and any errors.
 */
function sp_debug_query() {
    global $wpdb;
    if (!empty($wpdb->last_error)) {
        error_log("\r\nDatabase Query Error: " . $wpdb->last_error, 3, SPRINT_PLUGIN_PATH . 'log/db.log');
        error_log("\r\nLast Query: " . $wpdb->last_query, 3, SPRINT_PLUGIN_PATH . 'log/db.log');
        // Optional: Display errors on screen (only use for development).
        // echo "Error: " . $wpdb->last_error . "<br>";
        // echo "Query: " . $wpdb->last_query . "<br>";
    }
}

/*
// Insert
sp_insert('my_table', ['name' => 'John Doe', 'email' => 'john@example.com']);

// Update
sp_update('my_table', ['email' => 'new@example.com'], ['id' => 1]);

// Fetch All
$rows = sp_fetch_all('my_table');

// Fetch One
$row = sp_fetch_one('my_table', ['id' => 1]);

// Delete
sp_delete('my_table', ['id' => 1]);

// Search
$results = sp_search('my_table', ['name' => ['LIKE', '%John%'], 'age' => ['>=', 25]]);
*/