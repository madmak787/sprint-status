const bugMock = {
    'jira_id':'',
    'sprint_id':0,
    'ticket_id':0,
    'reported_by':0,
    'user_id':0,
    'minutes':'',
    'description':'',
    'comment':''
}

jQuery(document).ready(function() {
    jQuery.fn.dataTable.ext.errMode = 'none';

    // Init Textarea
    if(jQuery('.textarea').length) {
        quill = new Quill('.textarea', {
            modules: {
                toolbar: [
                    [{header: [1, 2, !1] }],
                    ["bold", "italic", "underline"],
                    ["image", "code-block"]]
                },
                placeholder: "Enter description...",
                theme: "snow"
            }
        );
    }

    // Load table data
    loadAjaxTable();

    // Attach the reset event to the form
    jQuery('#content button[type="reset"]').on('click', function (e) {
        // Prevent the form from resetting immediately
        e.preventDefault();

        // Display SweetAlert2 confirmation dialog
        Swal.fire({
            text: "Are you sure you would like to cancel?",
            icon: "warning",
            showCancelButton: true,
            buttonsStyling: false,
            confirmButtonText: "Yes, cancel it!",
            cancelButtonText: "No, return",
            customClass: {
                confirmButton: "btn btn-primary",
                cancelButton: "btn btn-active-light"
            }
        }).then(function (result) {
            if (result.value) {
                // User confirmed the reset
                jQuery('#content form').get(0).reset(); // Reset the form
                // Optionally, hide any custom elements or messages
                // For example, hiding a modal:
                jQuery('#modal').modal('hide'); // Replace with your modal ID
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                // User canceled the reset
                Swal.fire({
                    text: "Your form has not been cancelled!",
                    icon: "error",
                    buttonsStyling: false,
                    confirmButtonText: "Ok, got it!",
                    customClass: { confirmButton: "btn btn-primary" }
                });
            }
        });
    });

    // When the form is submitted
    jQuery('#content button[type="submit"]').on('click', function (e) {
        e.preventDefault(); // Prevent the default button action
    
        const button = jQuery(this); // The clicked submit button
        const form = button.closest('form'); // Get the parent form of the button
    
        // Show progress indicator and hide label
        button.find('.indicator-label').hide();
        button.find('.indicator-progress').show();
    
        // Get serialized form data
        let formData = form.serializeArray();
        const hasSelectedSprint = formData.some(item => item.name === "selected_sprint");
        if(!hasSelectedSprint && jQuery('#content .active .btn-check').length) {
            formData.push({name: 'selected_sprint', value: jQuery('#content .active .btn-check').val()});
        }
    
        // Loop through all Quill editors and append their content to formData
        jQuery('.textarea').each(function () {
            const quillElement = jQuery(this);
            const fieldName = quillElement.attr('name'); // Get the name attribute
            if (fieldName) {
                if (quill) {
                    formData.push({
                        name: fieldName,
                        value: quill.getText() // Get Quill's HTML content
                    });
                }
            }
        });
    
        // Submit the form data via AJAX
        jQuery.ajax({
            url: ajax_url,
            type: 'POST',
            data: jQuery.param(formData), // Convert array to a URL-encoded string
            beforeSend: function () {
                console.log('Sending data...');
            },
            success: function (response) {
                console.log('Response received:', response);
                if(response.success) {
                    replaceTableData(response.data);
        
                    // Reset the form
                    form.get(0).reset();
        
                    // Reset all Quill editors
                    jQuery('.textarea').each(function () {
                        if (quill) {
                            quill.setText(''); // Clear Quill content
                        }
                    });
        
                    // Hide any custom elements or messages (e.g., a modal)
                    jQuery('#modal').modal('hide'); // Replace with your modal ID
                } else {
                    Swal.fire({
                        text: response.data,
                        icon: "error",
                        confirmButtonText: "OK",
                        customClass: { confirmButton: "btn btn-primary" }
                    });
                }
            },
            error: function (xhr, status, error) {
                console.error('Error:', error);
    
                // Show error message
                Swal.fire({
                    text: "An error occurred. Please try again.",
                    icon: "error",
                    confirmButtonText: "OK",
                    customClass: { confirmButton: "btn btn-primary" }
                });
            },
            complete: function () {
                // Hide progress indicator and show label when done
                button.find('.indicator-label').show();
                button.find('.indicator-progress').hide();
            }
        });
    });
    
    // When the form is submitted
    jQuery('#content .label-parent [name="selected_sprint"]').on('click', function (e) {
        e.preventDefault();
        jQuery('#content .label-parent [name="selected_sprint"]').prop('checked', false);
        const sprint_id = jQuery(this).val();
        jQuery(this).prop('checked', true);
        
        // Init form data
        let formData = {};
    
        // Append formData
        formData['action'] = 'selected_sprint';
        formData['ticket_id'] = jQuery('#content [name="id"]').val();
        formData['sprint_id'] = sprint_id;
        
        // Submit the form data via AJAX
        jQuery.ajax({
            url: ajax_url,
            type: 'POST',
            data: jQuery.param(formData), // Convert array to a URL-encoded string
            beforeSend: function () {
                console.log('Sending data...');
            },
            success: function (response) {
                fillFormWithObject(response.data);
            },
            error: function (xhr, status, error) {
                console.error('Error:', error);
    
                // Show error message
                Swal.fire({
                    text: "An error occurred. Please try again.",
                    icon: "error",
                    confirmButtonText: "OK",
                    customClass: { confirmButton: "btn btn-primary" }
                });
            },
        });
    });

    // Link the external search input
    jQuery('.table-search').on('keyup', function () {
        table.search(this.value).draw(); // Perform search and redraw the table
    });

    // Clear up few things on modal close
    jQuery("#modal").on('hide.bs.modal', function(){
        jQuery('#modal form').trigger('reset');
        jQuery('#modal [name="action"], #modal [name="id"]').val('');
        jQuery('#modal [name="selected_sprint"]').parent().removeClass('active');
        fillFormWithObject(bugMock);
    });

    // Init Datepicker
    // jQuery('.datepicker').flatpickr({ enableTime: false, dateFormat: "Y-m-d H:i:S" });
    jQuery('.datepicker').flatpickr({ enableTime: false, dateFormat: "Y-m-d" });

    jQuery(document).on('keyup', '.jira_id', function (e) {
        var dc_id = jQuery(this).val();
        if(dc_id.length>=7) {
            jQuery.ajax({
                url: ajax_url,
                type: 'POST',
                data: {
                    action: 'get_jira_details',
                    id: dc_id
                },
                success: function (response) {
                    console.log('Response:', response);
                    // localEdit(response.data[0]);
                    fillFormWithObject(response.data);
                },
                error: function (xhr) {
                    alert('Failed to load data');
                },
            });
        }
    });

    // Handle select[name="sprint_id"] change event
    jQuery('.sprint_id').on('select2:select', function (e) {
        const sprint_id = e.params.data.id; // Get the selected value from Select2
        jQuery('input[name="jira_id"]').val("");
        if (sprint_id) {
            // Make an AJAX request to fetch tickets based on sprint_id
            jQuery.ajax({
                url: ajax_url, // WordPress AJAX URL
                method: "POST",
                data: {
                    action: "sprint_tickets", // Use 'sprint_tickets' as the action
                    sprint_id: sprint_id,
                },
                success: function (response) {
                    // Ensure response.data exists and is an array
                    if (Array.isArray(response.data)) {
                        const $ticketSelect = jQuery('select[name="ticket_id"]');

                        // Clear existing options
                        $ticketSelect.empty();

                        // Append new options to select[name="ticket_id"]
                        response.data.forEach((v) => {
                            // Create a new option element
                            const option = new Option(v.name, v.id);
                            // Add the data-jira attribute
                            option.setAttribute("data-jira", v.jira_id);
                            option.setAttribute("data-user", v.user_id);
                            // Append the option to the select element
                            $ticketSelect.append(option);
                        });

                        // Reinitialize Select2 for ticket dropdown
                        if ($ticketSelect.data('select2')) {
                            $ticketSelect.select2('destroy'); // Destroy existing Select2 instance
                        }
                        $ticketSelect.select2(); // Reinitialize Select2
                        reloadSprintTickets();
                    } else {
                        console.error("Invalid data format in response:", response);
                    }
                },
                error: function (xhr, status, error) {
                    console.error("AJAX Error:", error);
                },
            });
        } else {
            console.warn("No sprint selected.");
        }
    });

    // Handle select[name="ticket_id"] change event
    jQuery(document).on('select2:select', '.ticket_id', function (e) {
        reloadSprintTickets();
    });
});