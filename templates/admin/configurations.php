<?php
$sprint = get_option('sprint');
if(isset($_POST['sprint-save'])) {
    $sprint['enable'] = isset($_POST['sprint-enable']) ?? false;
    $sprint['title'] = $_POST['sprint-title'];
    update_option('sprint', $sprint);
}
?>
<h1>General Settings</h1>
<form method="post" action="<?=admin_url('admin.php?page=sprint-dashboard')?>" novalidate="novalidate">
    <table class="form-table">
        <tbody>
            <tr>
                <th scope="row">Enable</th>
                <td>
                    <fieldset>
                        <legend class="screen-reader-text">
                            <span>checkbox</span>
                        </legend>
                        <label>
                            <input name="sprint-enable" type="checkbox" value="1" <?=$sprint['enable']?'checked="checked"':''?>>
                            Check to enable.
                        </label>
                    </fieldset>
                </td>
            </tr>
            <tr>
                <th scope="row"><label>Application Title</label></th>
                <td><input name="sprint-title" type="text" value="<?=$sprint['title']?>" class="regular-text" /></td>
            </tr>
            <tr>
                <th scope="row"></th>
                <td>
                    <button type="submit" class="button button-primary button-hero" name="sprint-save">Save</button>
                </td>
            </tr>
        </tbody>
    </table>
</form>
