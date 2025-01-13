<?php
$modal_name = 'add-ticket';
include 'inc/header.php';
?>
<link href="<?=SPRINT_PLUGIN_URL?>/assets/js/datatables.bundle.css" rel="stylesheet" type="text/css"/>
<div class="d-flex flex-column flex-column-fluid">

    <?php include 'inc/toolbar.php'; ?>

    <div id="kt_app_content" class="app-content flex-column-fluid">

        <div id="kt_app_content_container" class="app-container container-xxl">
            <div class="card card-flush">
                <div class="card-header align-items-center py-5 gap-2 gap-md-5">
                    <div class="card-title">
                        <div class="d-flex align-items-center position-relative my-1">
                            <i class="ki-duotone ki-magnifier fs-3 position-absolute ms-4">
                                <span class="path1"></span>
                                <span class="path2"></span>
                            </i>
                            <input type="text" class="form-control form-control-solid w-250px ps-12 table-search" placeholder="Search Ticket" />
                        </div>
                    </div>

                    <div class="card-toolbar">
                        <a href="<?="{SPRINT_MAIN_URL}$modal_name/"?>" class="btn btn-primary <?=$modal_name?>">
                            Add Ticket
                        </a>
                    </div>
                </div>

                <div class="card-body pt-0">

                    <table class="table align-middle table-row-dashed fs-6 gy-5" id="table" data-action="sprint_all_tickets" data-delete="delete_ticket">
                        <thead></thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
require_once 'inc/footer.php';
?>
<script src="<?=SPRINT_PLUGIN_URL?>/assets/js/datatables.bundle.js"></script>
<!-- <script src="<?=SPRINT_PLUGIN_URL?>/assets/js/datatables.init.js"></script> -->
<script>
jQuery(document).ready(function() {
    jQuery(document).on('click', '.<?=$modal_name?>', function(e) {
        e.preventDefault();
        showModal('Add New Ticket', '', 'Add Ticket', 'add_ticket');
    });
    if(!jQuery('.types [type="radio"]:checked').length) {
        jQuery('.types [type="radio"]:eq(0)').prop('checked', true);
    }
});
function localEdit(data) {
    fillFormWithObject(data);
    showModal('Edit Ticket', '', 'Update Ticket', 'update_ticket');
}
</script>
