<!DOCTYPE html>
<html lang="en">

<head>
    <title><?=$title?></title>
    <link rel="shortcut icon" href="<?=SPRINT_PLUGIN_URL?>/assets/images/favicon.ico" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
    <link href="<?=SPRINT_PLUGIN_URL?>/assets/css/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="<?=SPRINT_PLUGIN_URL?>/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
    <link href="<?=SPRINT_PLUGIN_URL?>/assets/css/custom.css" rel="stylesheet" type="text/css" />
    <script>
        var defaultThemeMode = "light";
        var themeMode;

        if (document.documentElement) {
            if (document.documentElement.hasAttribute("data-bs-theme-mode")) {
                themeMode = document.documentElement.getAttribute("data-bs-theme-mode");
            } else {
                if (localStorage.getItem("data-bs-theme") !== null) {
                    themeMode = localStorage.getItem("data-bs-theme");
                } else {
                    themeMode = defaultThemeMode;
                }
            }

            if (themeMode === "system") {
                themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light";
            }

            document.documentElement.setAttribute("data-bs-theme", themeMode);
        }
        
        var ajax_url = "<?=admin_url('admin-ajax.php')?>";
    </script>
</head>
<?php
$modal['title'] = '';
$modal['description'] = '';
$modal['content'] = '';
?>
<body id="kt_app_body" data-kt-app-layout="dark-sidebar" data-kt-app-header-fixed="true" data-kt-app-sidebar-enabled="true" data-kt-app-sidebar-fixed="true" data-kt-app-sidebar-hoverable="true" data-kt-app-sidebar-push-header="true" data-kt-app-sidebar-push-toolbar="true" data-kt-app-sidebar-push-footer="true" data-kt-app-toolbar-enabled="true" class="app-default">