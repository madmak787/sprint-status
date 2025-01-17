<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= get_bloginfo('title') ?></title>
    <link rel="shortcut icon" href="<?=SPRINT_PLUGIN_URL?>/assets/images/favicon.ico" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
    <link href="<?=SPRINT_PLUGIN_URL?>/assets/css/plugins.bundle.css" rel="stylesheet" type="text/css" />
    <link href="<?=SPRINT_PLUGIN_URL?>/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
</head>

<?php
$error = '';
if (isset($_POST['username'], $_POST['password'])) {
    $username = sanitize_user($_POST['username']);
    $password = sanitize_text_field($_POST['password']);

    // Authenticate user
    $user = wp_signon([
        'user_login'    => $username,
        'user_password' => $password,
        'remember'      => true, // Optionally set 'remember me'
    ]);

    // Check authentication result
    if (is_wp_error($user)) {
        // Login failed, redirect with error message
        $error = 'Wrong username or password.';
    } else {
        // Login successful, redirect to the dashboard or a custom URL
        wp_redirect(home_url());
        exit;
    }
}
?>

<body id="kt_body" class="app-blank">
    <div class="d-flex flex-column flex-root" id="kt_app_root">

        <div class="d-flex flex-column flex-lg-row flex-column-fluid">
            <div class="d-flex flex-column flex-lg-row-fluid w-lg-50 p-10 order-2 order-lg-1">
                <div class="d-flex flex-center flex-column flex-lg-row-fluid">
                    <div class="w-lg-500px p-10">
                        <?=empty($error)?'':'<p class="alert alert-warning">'.$error.'</p>'?>
                        <form class="form w-100" novalidate="novalidate" method="post" action="<?=home_url('/')?>">
                            <div class="text-center mb-11">
                                <h1 class="text-gray-900 fw-bolder mb-3">
                                    Sign In
                                </h1>

                                <div class="text-gray-500 fw-semibold fs-6">
                                    <?=bloginfo('sitename')?>
                                </div>
                            </div>

                            <div class="fv-row mb-8">
                                <input type="text" placeholder="Username" name="username" autocomplete="off" class="form-control bg-transparent" />
                            </div>

                            <div class="fv-row mb-3">
                                <input type="password" placeholder="Password" name="password" autocomplete="off" class="form-control bg-transparent" />
                            </div>

                            <div class="d-flex flex-stack flex-wrap gap-3 fs-base fw-semibold mb-8">
                                <div></div>
                            </div>

                            <div class="d-grid mb-10">
                                <button type="submit" name="login" class="btn btn-primary">

                                    <span class="indicator-label">
                                        Sign In</span>

                                    <span class="indicator-progress">
                                        Please wait... <span
                                            class="spinner-border spinner-border-sm align-middle ms-2"></span>
                                    </span>
                                </button>
                            </div>

                        </form>
                    </div>
                </div>

            </div>

            <div class="d-flex flex-lg-row-fluid w-lg-50 bgi-size-cover bgi-position-center order-1 order-lg-2"
                style="background-image: url(<?=SPRINT_PLUGIN_URL?>/assets/images/auth-bg.png)">
                <div class="d-flex flex-column flex-center py-7 py-lg-15 px-5 px-md-15 w-100">
                    <a href="<?=home_url('/')?>" class="mb-0 mb-lg-12">
                        <img alt="Logo" src="<?=SPRINT_PLUGIN_URL?>/assets/images/custom-1.png" class="h-60px h-lg-75px" />
                    </a>

                    <img class="d-none d-lg-block mx-auto w-275px w-md-50 w-xl-500px mb-10 mb-lg-20"
                        src="<?=SPRINT_PLUGIN_URL?>/assets/images/auth-screens.png" alt="" />

                    <h1 class="d-none d-lg-block text-white fs-2qx fw-bolder text-center mb-7">
                        Fast, Efficient and Productive
                    </h1>

                    <div class="d-none d-lg-block text-white fs-base text-center">
                        In this kind of post, <a href="#" class="opacity-75-hover text-warning fw-bold me-1">the
                            blogger</a>

                        introduces a person they’ve interviewed <br /> and provides some background information about

                        <a href="#" class="opacity-75-hover text-warning fw-bold me-1">the interviewee</a>
                        and their <br /> work following this is a transcript of the interview.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var hostUrl = "<?=site_url('/')?>";
    </script>
    <script src="<?=SPRINT_PLUGIN_URL?>/assets/js/plugins.bundle.js"></script>
    <script src="<?=SPRINT_PLUGIN_URL?>/assets/js/scripts.bundle.js"></script>
</body>

</html>
