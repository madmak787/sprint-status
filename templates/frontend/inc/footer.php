<div id="kt_app_footer" class="app-footer ">
    <div class="app-container  container-fluid d-flex flex-column flex-md-row flex-center flex-md-stack py-3 ">
        <div class="text-gray-900 order-2 order-md-1">
            <span class="text-muted fw-semibold me-1"><?=date('Y')?> &copy; </span>
            <a href="https://khanamir.me/" target="_blank" class="text-gray-800 text-hover-primary">KhanAmir.me</a>
        </div>

        <ul class="menu menu-gray-600 menu-hover-primary fw-semibold order-1">
            <li class="menu-item">
                <a href="https://1.envato.market/EA4JP" target="_blank" class="menu-link px-2">Purchase</a>
            </li>
        </ul>
    </div>
</div>
</div>
</div>
</div>
</div>
<?php
$title = '';
$description = '';
ob_start();
include_once SPRINT_PLUGIN_PATH . "templates/frontend/modals/$modal_name.php";
$content = ob_get_contents();
ob_end_clean();
require_once SPRINT_PLUGIN_PATH.'templates/frontend/modals/main.php';
?>
<script>
    var hostUrl = "<?= site_url('/') ?>";
</script>
<script src="<?= SPRINT_PLUGIN_URL ?>/assets/js/plugins.bundle.js"></script>
<script src="<?= SPRINT_PLUGIN_URL ?>/assets/js/scripts.bundle.js"></script>
<script src="<?= SPRINT_PLUGIN_URL ?>/assets/js/widgets.bundle.js"></script>
<script src="<?= SPRINT_PLUGIN_URL ?>/assets/js/widgets.js"></script>
<script src="<?= SPRINT_PLUGIN_URL ?>/assets/js/functions.js"></script>
<script src="<?= SPRINT_PLUGIN_URL ?>/assets/js/custom.js"></script>
</body>

</html>