<?php include 'inc/header.php'; ?>
<?php
ini_set('display_errors', 0); ini_set('display_startup_errors', 0); error_reporting(FALSE);
$jira = get_option('sprint_jira');
if(isset($_POST['domain'])) {
    $jira = [
        'domain' => $_POST['domain'],
        'email' => $_POST['email'],
        'token' => $_POST['token'],
    ];
    update_option('sprint_jira', $jira);
}
?>
<div class="d-flex flex-column flex-column-fluid">

    <?php include 'inc/toolbar.php'; ?>

    <div id="kt_app_content" class="app-content flex-column-fluid">

        <div id="kt_app_content_container" class="app-container container-xxl">
            <form class="form d-flex flex-column flex-lg-row" action="<?=SPRINT_MAIN_URL."api"?>" method="POST">
                <div class="d-flex flex-column flex-row-fluid gap-7 gap-lg-10">
                    <div class="card card-flush py-4">
                        <div class="card-header">
                            <div class="card-title">
                                <h2>JIRA Connection</h2>
                            </div>
                        </div>

                        <div class="card-body pt-0">
                            <div class="mb-10 fv-row">
                                <label class="required form-label">JIRA Domain</label>
                                <input type="text" name="domain" class="form-control mb-2" placeholder="https://your-domain.atlassian.net" value="<?=$jira['domain']?>" />
                                <div class="text-muted fs-7">Enter you JIRA atlassian url.</div>
                            </div>
                            <div class="mb-10 fv-row">
                                <label class="required form-label">JIRA Email</label>
                                <input type="text" name="email" class="form-control mb-2" placeholder="your-email@example.com" value="<?=$jira['email']?>" />
                                <div class="text-muted fs-7">Enter your JIRA email.</div>
                            </div>
                            <div class="mb-10 fv-row">
                                <label class="required form-label">API Key</label>
                                <input type="text" name="token" class="form-control mb-2" placeholder="your-api-token" value="<?=$jira['token']?>" />
                                <div class="text-muted fs-7">Enter your JIRA API token.</div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="d-flex justify-content-end">
                        <a href="<?=SPRINT_MAIN_URL?>sprints" class="btn btn-light me-5">
                            Cancel
                        </a>

                        <button type="submit" id="sprint_add" class="btn btn-primary">
                            <span class="indicator-label">
                                Save Changes
                            </span>
                            <span class="indicator-progress">
                                Please wait... <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>

<?php include 'inc/footer.php'; ?>
<script src="<?=SPRINT_PLUGIN_URL?>/assets/js/form.js"></script>
