<?php
$users = get_users();
$sprints = sp_fetch_all(SPRINT_TABLE, 'id', 'DESC');
?>
<div class="row g-9 mb-8">
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">JIRA ID</label>
        <input class="form-control form-control-solid jira_id" placeholder="Enter JIRA ID" name="jira_id" autocomplete="off" />
    </div>
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Sprint</label>
        <div class="d-flex flex-column align-items-start justify-content-center gap-2 ticket-sprints">
            <?php
            foreach($sprints as $s) {
                ?>
                <label class="form-check form-check-custom form-check-inline form-check-solid me-5">
                    <input class="form-check-input" name="sprint[]" type="checkbox" value="<?=$s['id']?>"/>
                    <span class="fw-semibold ps-2 fs-6">
                        <?=$s['name']?>
                    </span>
                </label>
                <?php
            }
            ?>
        </div>
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-12 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Name</label>
        <input class="form-control form-control-solid" placeholder="Enter ticket name" name="name" autocomplete="off" />
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-12 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Description</label>
        <div name="description" class="textarea h-100px mb-2"></div>
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Estimate</label>
        <input class="form-control form-control-solid" placeholder="Enter estimate" name="estimates" autocomplete="off" />
    </div>
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Assignee</label>
        <select class="form-select mb-2" name="user_id" data-control="select2" data-hide-search="true" data-placeholder="Select user">
            <option></option>
            <?php foreach($users as $u) { ?>
                <option value="<?=$u->ID?>"><?=$u->display_name?></option>
            <?php } ?>
        </select>
    </div>
</div>
<div class="separator border-4 my-10"></div>
<div class="card card-bordered mb-5">
    <div class="ribbon">
        <div class="ribbon-label bg-primary">Sprint Specific</div>
    </div>
    <div class="card-body">
        <div class="row g-9 mb-8">
            <div class="col-md-12 fv-row">
                <label class="required fs-6 fw-semibold mb-2">Choose Sprint 👇</label>
                <div class="btn-group w-100 label-parent" data-kt-buttons="true" data-kt-buttons-target="[data-kt-button]">
                    <?php
                    foreach($sprints as $s) {
                        ?>
                        <label class="btn btn-outline btn-color-muted btn-active-success" data-kt-button="true">
                            <input class="btn-check" type="radio" name="selected_sprint" value="<?=$s['id']?>" />
                            <?=preg_replace('/\D/', '', $s['name'])?>
                        </label>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </div>
        <div class="row g-9 mb-8">
            <div class="col-md-12 fv-row">
                <label class="required fs-6 fw-semibold mb-2">Comment</label>
                <textarea name="comment" class="form-control form-control-solid h-100px mb-2"></textarea>
            </div>
        </div>
        <div class="row g-9">
            <div class="col-md-6 fv-row">
                <label class="required fs-6 fw-semibold mb-2">Percentage</label>
                <input class="form-control form-control-solid" placeholder="Enter percentage" name="percentage" autocomplete="off" />
            </div>
            <div class="col-md-6 fv-row">
                <label class="required fs-6 fw-semibold mb-2">Status</label>
                <select class="form-select mb-2" name="status" data-control="select2" data-hide-search="true" data-placeholder="Select status">
                    <option></option>
                    <?php foreach(STATUS as $s) { ?>
                        <option value="<?=$s?>"><?=strtoupper(unslug($s))?></option>
                    <?php } ?>
                </select>
            </div>
        </div>
    </div>
</div>
