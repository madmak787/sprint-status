<?php
$users = get_users();
$sprints = sp_fetch_all(SPRINT_TABLE, 'id', 'DESC');
?>
<div class="row g-9 mb-8">
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Sprint</label>
        <select class="form-select mb-2 sprint_id" name="sprint_id" data-control="select2" data-hide-search="true" data-placeholder="Select sprint">
            <option></option>
            <?php foreach($sprints as $s) { ?>
                <option value="<?=$s['id']?>"><?=$s['name']?></option>
            <?php } ?>
        </select>
    </div>
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Ticket</label>
        <select class="form-select mb-2 ticket_id" name="ticket_id" data-control="select2" data-hide-search="true" data-placeholder="Select ticket">
            <option></option>
        </select>
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">JIRA ID</label>
        <input class="form-control form-control-solid jira_id" placeholder="Enter JIRA ID" name="jira_id" autocomplete="off" />
    </div>
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Reported By</label>
        <select class="form-select mb-2" name="reported_by" data-control="select2" data-hide-search="true" data-placeholder="Select user">
            <option></option>
            <?php foreach($users as $u) { ?>
                <option value="<?=$u->ID?>"><?=$u->display_name?></option>
            <?php } ?>
        </select>
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-12 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Description</label>
        <div name="description" class="textarea h-100px mb-2"></div>
    </div>
</div>
