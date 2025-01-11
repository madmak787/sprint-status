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
        <label class="required fs-6 fw-semibold mb-2">Assignee</label>
        <select class="form-select mb-2 assignee" name="user_id" data-control="select2" data-hide-search="true" data-placeholder="Select user">
            <option></option>
            <?php foreach($users as $u) { ?>
                <option value="<?=$u->ID?>"><?=$u->display_name?></option>
            <?php } ?>
        </select>
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-12 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Hours</label>
        <select class="form-select mb-2" name="minutes" data-control="select2" data-hide-search="true" data-placeholder="Select hours">
            <option></option>
            <?php
            // Start time in minutes and end time in minutes
            $start = 0; // Start at 0 minutes
            $end = 720; // Example: End at 720 minutes (12 hours)
            // Loop through with a gap of 10 minutes
            for ($minutes = $start; $minutes <= $end; $minutes += 5) {
                $label = convertMinutesToHoursAndMinutes($minutes); // Convert minutes to text
                echo '<option value="' . $minutes . '">' . $label . '</option>';
            }
            ?>
        </select>
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-12 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Comment</label>
        <div name="comment" class="textarea h-100px mb-2"></div>
    </div>
</div>
