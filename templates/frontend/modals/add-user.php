<?php
global $wp_roles;
if (!isset($wp_roles)) {
    $wp_roles = new WP_Roles();
}
$roles = $wp_roles->roles;
$role_names = array_keys($roles);
?>
<div class="row g-9 mb-8">
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">First Name</label>
        <input class="form-control form-control-solid" placeholder="Enter first name" name="first_name" autocomplete="off" />
    </div>
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Last Name</label>
        <input class="form-control form-control-solid" placeholder="Enter last name" name="last_name" autocomplete="off" />
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-12 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Email</label>
        <input class="form-control form-control-solid" placeholder="Enter email" name="user_email" autocomplete="off" />
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Username</label>
        <input class="form-control form-control-solid" placeholder="Enter username" name="username" autocomplete="off" />
    </div>
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Password</label>
        <input type="password" class="form-control form-control-solid" placeholder="Enter password" name="password" autocomplete="off" />
    </div>
</div>
<div class="row g-9 mb-8">
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Display Name</label>
        <input class="form-control form-control-solid" placeholder="Enter display name" name="display_name" autocomplete="off" />
    </div>
    <div class="col-md-6 fv-row">
        <label class="required fs-6 fw-semibold mb-2">Role</label>
        <select class="form-select mb-2" name="roles" data-control="select2" data-hide-search="true" data-placeholder="Select user role">
            <option></option>
            <?php foreach($role_names as $rn) { ?>
                <option value="<?=$rn?>"><?=ucfirst($rn)?></option>
            <?php } ?>
        </select>
    </div>
</div>
