<?php
$modal_name = 'add-bug';
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
                            <input type="text" class="form-control form-control-solid w-250px ps-12 table-search" placeholder="Search Bug" />
                        </div>
                    </div>

                    <div class="card-toolbar">
                        <a href="<?="{SPRINT_MAIN_URL}$modal_name/"?>" class="btn btn-primary <?=$modal_name?>">
                            Add Bug
                        </a>
                    </div>
                </div>

                <div class="card-body pt-0">

                    <table class="table align-middle table-row-dashed fs-6 gy-5" id="table" data-action="ticket_bugs" data-delete="delete_bug">
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
        showModal('Add Bug', '', 'Add Bug', 'add_bug');
    });

    // Handle select[name="ticket_id"] change event
    reloadSprintTickets();
});
function localEdit(data) {
    fillFormWithObject(data);
    showModal('Edit Bug', '', 'Update Bug', 'update_bug');
}
</script>
