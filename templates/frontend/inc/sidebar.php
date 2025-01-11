<div id="kt_app_sidebar" class="app-sidebar  flex-column " data-kt-drawer="true" data-kt-drawer-name="app-sidebar"
    data-kt-drawer-activate="{default: true, lg: false}" data-kt-drawer-overlay="true" data-kt-drawer-width="225px"
    data-kt-drawer-direction="start" data-kt-drawer-toggle="#kt_app_sidebar_mobile_toggle">

    <div class="app-sidebar-logo px-6" id="kt_app_sidebar_logo">
        <a href="<?=home_url('/')?>">
            <img alt="Logo" src="<?=SPRINT_PLUGIN_URL?>/assets/images/default-dark.svg" class="h-25px app-sidebar-logo-default" />

            <img alt="Logo" src="<?=SPRINT_PLUGIN_URL?>/assets/images/default-small.svg" class="h-20px app-sidebar-logo-minimize" />
        </a>

        <?php
            if (isset($_COOKIE["sidebar_minimize_state"]) && $_COOKIE["sidebar_minimize_state"] === "on") { 
                // 1. "src/js/layout/sidebar.js" adds "sidebar_minimize_state" cookie value to save the sidebar minimize state.
                // 2. Set data-kt-app-sidebar-minimize="on" attribute for body tag.
                // 3. Set data-kt-toggle-state="active" attribute to the toggle element with "kt_app_sidebar_toggle" id.
                // 4. Add "active" class to to sidebar toggle element with "kt_app_sidebar_toggle" id.
            }
        ?>
        <div
            id="kt_app_sidebar_toggle"
            class="app-sidebar-toggle btn btn-icon btn-shadow btn-sm btn-color-muted btn-active-color-primary h-30px w-30px position-absolute top-50 start-100 translate-middle rotate "
            data-kt-toggle="true"
            data-kt-toggle-state="active"
            data-kt-toggle-target="body"
            data-kt-toggle-name="app-sidebar-minimize"
        >
            <i class="ki-duotone ki-black-left-line fs-3 rotate-180">
                <span class="path1"></span>
                <span class="path2"></span>
            </i>
        </div>
    </div>
    <div class="app-sidebar-menu overflow-hidden flex-column-fluid">
        <div id="kt_app_sidebar_menu_wrapper" class="app-sidebar-wrapper">
            <div id="kt_app_sidebar_menu_scroll" class="scroll-y my-5 mx-3" data-kt-scroll="true"
                data-kt-scroll-activate="true" data-kt-scroll-height="auto"
                data-kt-scroll-dependencies="#kt_app_sidebar_logo, #kt_app_sidebar_footer"
                data-kt-scroll-wrappers="#kt_app_sidebar_menu" data-kt-scroll-offset="5px"
                data-kt-scroll-save-state="true">
                <div class="menu menu-column menu-rounded menu-sub-indention fw-semibold fs-6" id="#kt_app_sidebar_menu" data-kt-menu="true" data-kt-menu-expand="false">
                    <div class="menu-item">
                        <a class="menu-link <?=get_query_var( 'sprintpage' )==='dashboard' ? 'active' : ''?>" href="<?=SPRINT_MAIN_URL?>dashboard">
                            <span class="menu-icon">
                                <i class="ki-duotone ki-home fs-2"></i>
                            </span>
                            <span class="menu-title">Dashboard</span>
                        </a>
                    </div>
                    <div class="menu-item">
                        <a class="menu-link <?=get_query_var( 'sprintpage' )==='sprints' ? 'active' : ''?>" href="<?=SPRINT_MAIN_URL?>sprints">
                            <span class="menu-icon">
                            <i class="ki-duotone ki-microsoft fs-2">
                                <span class="path1"></span>
                                <span class="path2"></span>
                                <span class="path3"></span>
                                <span class="path4"></span>
                            </i>
                            </span>
                            <span class="menu-title">Sprints</span>
                        </a>
                    </div>
                    <div class="menu-item">
                        <a class="menu-link <?=get_query_var( 'sprintpage' )==='tickets' ? 'active' : ''?>" href="<?=SPRINT_MAIN_URL?>tickets">
                            <span class="menu-icon">
                            <i class="ki-duotone ki-double-check fs-2">
                                <span class="path1"></span>
                                <span class="path2"></span>
                            </i>
                            </span>
                            <span class="menu-title">Tickets</span>
                        </a>
                    </div>
                    <div class="menu-item">
                        <a class="menu-link <?=get_query_var( 'sprintpage' )==='bugs' ? 'active' : ''?>" href="<?=SPRINT_MAIN_URL?>bugs">
                            <span class="menu-icon">
                                <i class="ki-duotone ki-information fs-2">
                                    <span class="path1"></span>
                                    <span class="path2"></span>
                                    <span class="path3"></span>
                                </i>
                            </span>
                            <span class="menu-title">Bugs</span>
                        </a>
                    </div>
                    <div class="menu-item">
                        <a class="menu-link <?=get_query_var( 'sprintpage' )==='hours' ? 'active' : ''?>" href="<?=SPRINT_MAIN_URL?>hours">
                            <span class="menu-icon">
                                <i class="ki-duotone ki-electronic-clock fs-2">
                                    <span class="path1"></span>
                                    <span class="path2"></span>
                                    <span class="path3"></span>
                                    <span class="path4"></span>
                                </i>
                            </span>
                            <span class="menu-title">Hours</span>
                        </a>
                    </div>
                    <div class="menu-item">
                        <a class="menu-link <?=get_query_var( 'sprintpage' )==='users' ? 'active' : ''?>" href="<?=SPRINT_MAIN_URL?>users">
                            <span class="menu-icon">
                                <i class="ki-duotone ki-profile-user fs-2">
                                    <span class="path1"></span>
                                    <span class="path2"></span>
                                    <span class="path3"></span>
                                    <span class="path4"></span>
                                </i>
                            </span>
                            <span class="menu-title">Users</span>
                        </a>
                    </div>
                    <div class="menu-item">
                        <a class="menu-link <?=get_query_var( 'sprintpage' )==='reports' ? 'active' : ''?>" href="<?=SPRINT_MAIN_URL?>reports">
                            <span class="menu-icon">
                                <i class="ki-duotone ki-graph-up fs-2">
                                    <span class="path1"></span>
                                    <span class="path2"></span>
                                    <span class="path3"></span>
                                    <span class="path4"></span>
                                    <span class="path5"></span>
                                    <span class="path6"></span>
                                </i>
                            </span>
                            <span class="menu-title">Reports</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="app-sidebar-footer flex-column-auto pt-2 pb-6 px-6" id="kt_app_sidebar_footer">
        <?php
        $jira = get_option('sprint_jira');
        ?>
        <a
            href="<?=SPRINT_MAIN_URL."api"?>"
            class="btn btn-flex flex-center <?=empty($jira['token'])?'btn-custom btn-primary':'btn-success'?> overflow-hidden text-nowrap px-0 h-40px w-100"
            data-bs-toggle="tooltip"
            data-bs-trigger="hover"
            data-bs-dismiss-="click"
            title="<?=empty($jira['token'])?'Add JIRA API key to connect':'JIRA API details already added'?>"
        >
            <svg style="width: 20px;margin-right: 5px;fill: #fff;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 496 512"><path d="M490 241.7C417.1 169 320.6 71.8 248.5 0 83 164.9 6 241.7 6 241.7c-7.9 7.9-7.9 20.7 0 28.7C138.8 402.7 67.8 331.9 248.5 512c379.4-378 15.7-16.7 241.5-241.7 8-7.9 8-20.7 0-28.6zm-241.5 90l-76-75.7 76-75.7 76 75.7-76 75.7z"/></svg>
            <span class="btn-label">
                Connect<?=empty($jira['token'])?'':'ed'?> To Jira
            </span>
        </a>
    </div>
</div>