<?php include 'inc/header.php'; ?>
<link href="<?= SPRINT_PLUGIN_URL ?>/assets/js/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="d-flex flex-column flex-column-fluid">

    <?php include 'inc/toolbar.php'; ?>

    <div id="kt_app_content" class="app-content flex-column-fluid">

        <div id="kt_app_content_container" class="app-container container-xxl">
            <div class="card card-xl-stretch mb-xl-8">
                <!--begin::Header-->
                <div class="card-header border-0 pt-5">
                    <h3 class="card-title align-items-start flex-column">
                        <span class="card-label fw-bold fs-3 mb-1">Latest Orders</span>

                        <span class="text-muted mt-1 fw-semibold fs-7">More than 100 new orders</span>
                    </h3>
                </div>

                <div class="card-body py-3">
                    <?php
                    $users = get_users();
                    $sprints = sp_fetch_all(SPRINT_TABLE, 'id', 'DESC');
                    $tickets = sp_fetch_all(TICKETS_TABLE, 'id', 'DESC');
                    ?>
                    <div class="row g-9 mb-8">
                        <div class="col-md-4 fv-row">
                            <label class="required fs-6 fw-semibold mb-2">Sprint</label>
                            <select class="form-select mb-2 sprint_id" name="sprint_id" data-control="select2" data-hide-search="true" data-placeholder="Select sprint">
                                <option value="0">Select sprint</option>
                                <?php foreach($sprints as $s) { ?>
                                    <option value="<?=$s['id']?>"><?=$s['name']?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-md-4 fv-row">
                            <label class="required fs-6 fw-semibold mb-2">Ticket</label>
                            <select class="form-select mb-2 no" name="ticket_id" data-control="select2" data-hide-search="true" data-placeholder="Select ticket">
                                <option value="0" data-jira="" data-user="0">Select ticket</option>
                                <?php foreach($tickets as $s) { ?>
                                    <option value="<?=$s['id']?>" data-jira="<?=$s['jira_id']?>" data-user="<?=$s['user_id']?>"><?=$s['name']?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="col-md-4 fv-row">
                            <label class="required fs-6 fw-semibold mb-2">Assignee</label>
                            <select class="form-select mb-2 assignee" name="user_id" data-control="select2" data-hide-search="true" data-placeholder="Select user">
                                <option value="0">Select user</option>
                                <?php foreach($users as $u) { ?>
                                    <option value="<?=$u->ID?>"><?=$u->display_name?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="row g-9 mb-8">
                        <div class="col-md-12 fv-row export">
                            <button type="button" name="sprint" value="1" class="btn btn-outline btn-outline-dashed btn-outline-primary btn-active-light-primary">Export Sprint</button>
                            <button type="button" name="ticket" value="1" class="btn btn-outline btn-outline-dashed btn-outline-info btn-active-light-info">Export Ticket</button>
                            <button type="button" name="user" value="1" class="btn btn-outline btn-outline-dashed btn-outline-warning btn-active-light-warning">Export User</button>
                            <button type="button" name="full" value="1" class="btn btn-outline btn-outline-dashed btn-outline-danger btn-active-light-danger">Full Report</button>
                            <button type="button" name="custom" value="1" class="btn btn-outline btn-outline-dashed btn-outline-secondary btn-active-light-secondary">Custom Report</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<?php include 'inc/footer.php'; ?>
<script src="<?=SPRINT_PLUGIN_URL?>/assets/js/datatables.bundle.js"></script>
<!-- <script src="<?=SPRINT_PLUGIN_URL?>/assets/js/datatables.init.js"></script> -->
<script>
jQuery(document).ready(function() {
    reloadSprintTickets();

    jQuery(document).on('click', '.export button', function (e) {
        e.preventDefault();
        downloadReport(jQuery(this).prop('name'));
    });
});
</script>