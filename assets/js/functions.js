var quill;
let table;
function showModal(title='', description='', btn_label = 'Submit', action = '') {
    jQuery('#modal h1').html(title);
    jQuery('#modal #description').html(description);
    jQuery('#modal #btn-label').html(btn_label);
    // if has password field
    const $passwordField = jQuery('#modal [type="password"]');
    if ($passwordField.length) {
        const placeholder = (btn_label || "").toLowerCase().includes('edit') 
            ? '(Leave empty for unchanged)' 
            : 'Enter Password';
        $passwordField.attr('placeholder', placeholder);
    }
    
    jQuery('#modal [name="action"]').val(action);
    jQuery('#modal').modal('show');
}

function keyToTitle(key) {
    // Replace underscores with spaces
    let replaced = key.replace(/_/g, ' ');

    // Capitalize the first letter
    return replaced.charAt(0).toUpperCase() + replaced.slice(1);
}

function loadAjaxTable() {
    const action = jQuery('#table').data('action');
    jQuery.ajax({
        url: ajax_url,
        type: 'GET',
        data: {
            action: action,
            excerpt: 220,
        },
        success: function (response) {
            initTable(response.data);    
        },
        error: function (xhr) {
            noTable();
        },
    });
}

function replaceTableData(newData) {
    if(typeof table === 'undefined') {
        initTable(newData);
    } else {
        table.clear(); // Clear the existing data
        table.rows.add(newData); // Add new data
        table.draw(); // Redraw the table
    }
}

function fillFormWithObject(dataObject) {
    const $form = jQuery("#content form");
    const $label = jQuery("#content #btn-label").text();
    jQuery('.jira_id').prop('readonly', false);
    jQuery('.jira_id').removeProp('readonly');
    if (!$form.length) {
        console.error("Form not found with selector: #content form");
        return;
    }

    jQuery.each(dataObject, function (key, value) {
        const $input = $form.find(`[name="${key}"], [name="${key}[]"]`);
        $input.prop('readonly', false);

        if ($input.length) {
            if ($input.is(':checkbox')) {
                if (Array.isArray(value)) {
                    // For checkboxes with "name[]" and multiple values
                    $input.each(function () {
                        jQuery(this).prop('checked', value.includes(jQuery(this).val()));
                    });
                } else {
                    // Single checkbox
                    $input.prop('checked', !!value);
                }
            } else if ($input.is(':radio')) {
                $input.each(function () {
                    jQuery(this).prop('checked', jQuery(this).val() == value);
                    if(key==='selected_sprint' && jQuery(this).val() == value) {
                        jQuery(this).parent().addClass('active');
                    }
                });
            } else if ($input.is('select')) {
                $input.val(value).change();
            } else if ($input.hasClass('textarea')) {
                // Check if it's a Quill editor
                if (quill) {
                    quill.setText(value); // Set the content
                }
            } else {
                if(key==='jira_id') {
                    // $input.prop('readonly', true);
                }
                $input.val(value);
            }
        }
    });
}

function reloadSprintTickets() {
    fillFormWithObject({'description':''});
    const sprint_id = jQuery('select[name="sprint_id"]').val(); // Get the selected value from Select2
    // const ticket_id = e.params.data.id;
    const ticket_id = jQuery('select[name="ticket_id"]').val(); // Get the selected value from Select2
    jQuery('input[name="jira_id"]').val(jQuery('select[name="ticket_id"] option:selected').data('jira'));
    if(jQuery('.assignee').length) {
        jQuery('.assignee').val(jQuery('select[name="ticket_id"] option:selected').data('user')).trigger('change');
    } else if (sprint_id && ticket_id) {
        // Make an AJAX request to fetch tickets based on sprint_id
        jQuery.ajax({
            url: ajax_url, // WordPress AJAX URL
            method: "POST",
            data: {
                action: "bug_by_ticket_id", // Use 'bug_by_ticket_id' as the action
                sprint_id: sprint_id,
                ticket_id: ticket_id,
            },
            success: function (response) {
                if (response.data) {
                    fillFormWithObject(response.data);
                }
            },
            error: function (xhr, status, error) {
                console.error("AJAX Error:", error);
            },
        });
    } else {
        console.warn("No sprint selected.");
    }
}

function initTable(data) {
    const action = jQuery('#table').data('action');
    const delete_action = jQuery('#table').data('delete');
    if(data[0]) {
        const keys = Object.keys(data[0]);
        const columns = keys.map(key => ({
            data: key,
            title: keyToTitle(key),
        }));

        // Add the checkbox column
        columns.unshift({
            data: null,
            title: `
                <div class="form-check form-check-sm form-check-custom form-check-solid">
                    <input class="form-check-input" type="checkbox" value="1" data-kt-check="true" data-kt-check-target=".widget-9-check"/>
                </div>
            `,
            orderable: false,
            searchable: false,
            render: function (data, type, row) {
                return `
                    <div class="form-check form-check-sm form-check-custom form-check-solid">
                        <input class="form-check-input widget-9-check" type="checkbox" value="1"/>
                    </div>
                `;
            },
        });
        // Add the action column
        columns.push({
            data: null,
            title: `<div class="d-flex justify-content-end flex-shrink-0">Actions</div>`,
            orderable: false,
            searchable: false,
            render: function (data, type, row) {
                return `
                    <div class="d-flex justify-content-end flex-shrink-0">
                        <a
                            href="#"
                            data-id="${row.id}"
                            class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1 btn-status"
                            data-bs-toggle="tooltip" data-bs-placement="top" title="Copy"
                        >
                            <i class="ki-duotone ki-copy fs-2"></i>
                        </a>
                        <a
                            href="#"
                            data-id="${row.id}"
                            class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1 btn-edit"
                            data-bs-toggle="tooltip" data-bs-placement="top" title="Edit"
                        >
                            <i class="ki-duotone ki-pencil fs-2">
                                <span class="path1"></span>
                                <span class="path2"></span>
                            </i>
                        </a>
                        <a
                            href="#"
                            data-id="${row.id}"
                            class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm btn-delete"
                            data-bs-toggle="tooltip" data-bs-placement="top" title="Delete"
                        >
                            <i class="ki-duotone ki-trash fs-2">
                                <span class="path1"></span>
                                <span class="path2"></span>
                                <span class="path3"></span>
                                <span class="path4"></span>
                                <span class="path5"></span>
                            </i>
                        </a>
                    </div>
                `;
            },
        });

        // Initialize DataTable
        table = jQuery('#table').DataTable({
            language: {
                emptyTable: "" // Suppress empty table message
            },
            data: data,
            columns: columns,
            ordering: true,
            order: [],
            lengthMenu: [
                [5, 10, 25, 50, 100, -1], // Values
                [5, 10, 25, 50, 100, "All"] // Labels
            ],
            pageLength: 10,
            initComplete: function () {
                // Add custom class to <thead> <tr>
                jQuery('#table thead tr').addClass('text-start text-gray-500 fw-bold fs-6 text-uppercase gs-0');
                jQuery('#table tbody').addClass('fw-semibold text-gray-600');
                jQuery('[data-bs-toggle="tooltip"]').each(function () {
                    new bootstrap.Tooltip(this);
                });
            },
        });

        // Event listeners for actions
        jQuery('#table').on('click', '.btn-status', function () {
            const id = jQuery(this).data('id');
            alert('View button clicked for ID: ' + id);
            // Add your view logic here
        });

        jQuery('#table').on('click', '.btn-edit', function () {
            const id = jQuery(this).data('id');
            // Add your edit logic here
            jQuery.ajax({
                url: ajax_url,
                type: 'POST',
                data: {
                    action: action,
                    id: id
                },
                success: function (response) {
                    localEdit(response.data[0]);
                },
                error: function (xhr) {
                    alert('Failed to load data');
                },
            });
        });

        jQuery('#table').on('click', '.btn-delete', function () {
            const id = jQuery(this).data('id');
        
            Swal.fire({
                title: 'Are you sure?',
                text: 'You won\'t be able to revert this!',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel',
                customClass: {
                    confirmButton: 'btn btn-primary',
                    cancelButton: 'btn btn-secondary'
                },
                buttonsStyling: false,
            }).then((result) => {
                if (result.isConfirmed) {
                    // Proceed with the AJAX request
                    jQuery.ajax({
                        url: ajax_url,
                        type: 'POST',
                        data: {
                            action: delete_action,
                            id: id,
                        },
                        success: function (response) {
                            // Notify the user of success
                            Swal.fire({
                                title: 'Deleted!',
                                text: 'The record has been deleted.',
                                icon: 'success',
                                confirmButtonText: 'OK',
                                customClass: {
                                    confirmButton: 'btn btn-primary'
                                },
                                buttonsStyling: false,
                            });
        
                            // Reload table data
                            replaceTableData(response.data); // Replace table data or refresh as needed
                        },
                        error: function (xhr) {
                            Swal.fire({
                                title: 'Error!',
                                text: 'An error occurred while deleting the record.',
                                icon: 'error',
                                confirmButtonText: 'OK',
                                customClass: {
                                    confirmButton: 'btn btn-primary'
                                },
                                buttonsStyling: false,
                            });
                        },
                    });
                } else if (result.dismiss === Swal.DismissReason.cancel) {
                    Swal.fire({
                        title: 'Cancelled',
                        text: 'Your record is safe!',
                        icon: 'info',
                        confirmButtonText: 'OK',
                        customClass: {
                            confirmButton: 'btn btn-primary'
                        },
                        buttonsStyling: false,
                    });
                }
            });
        });
    } else {
        noTable();
    }
}

function noTable() {
    jQuery('#table').html(`
        <tbody class="fw-semibold text-gray-600"><tr><td align="center">Nothing to display.</td></tr></tbody>
    `);
}

function downloadReport(btn = '') {
    const sprint_id = jQuery('select[name="sprint_id"]').val();
    const ticket_id = jQuery('select[name="ticket_id"]').val();
    const user_id = jQuery('select[name="user_id"]').val();
    // Download the report
    jQuery.ajax({
        url: ajax_url, // WordPress AJAX URL
        method: "POST",
        data: {
            action: "export_data", // Use the action corresponding to your PHP class method
            sprint_id: sprint_id,
            ticket_id: ticket_id,
            user_id: user_id,
            button: btn,
        },
        xhrFields: {
            responseType: 'blob' // Expect a binary data (blob) response
        },
        success: function (response, status, xhr) {
            // Check for a valid file response
            const contentDisposition = xhr.getResponseHeader('Content-Disposition');
            if (contentDisposition) {
                const fileName = contentDisposition.match(/filename="(.+)"/)[1] || 'export.xlsx';

                // Create a download link
                const link = document.createElement('a');
                link.href = window.URL.createObjectURL(response);
                link.download = fileName;
                document.body.appendChild(link);
                link.click();
                document.body.removeChild(link);
            } else {
                console.error("Invalid file response.");
            }
        },
        error: function (xhr, status, error) {
            console.error("AJAX Error:", error);
        }
    });
}
