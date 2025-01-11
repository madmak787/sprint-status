<?php include 'inc/header.php'; ?>
<link href="<?= SPRINT_PLUGIN_URL ?>/assets/js/datatables.bundle.css" rel="stylesheet" type="text/css" />
<div class="d-flex flex-column flex-column-fluid">

    <?php include 'inc/toolbar.php'; ?>

    <div id="kt_app_content" class="app-content flex-column-fluid">

        <div id="kt_app_content_container" class="app-container container-xxl">
            <div class="card card-xl-stretch mb-xl-8">
                <!--begin::Header-->
                <div class="card-header border-0 pt-5">
                    <h3 class="card-title align-items-start flex-column">
                        <span class="card-label fw-bold fs-3 mb-1">Latest Orders</span>

                        <span class="text-muted mt-1 fw-semibold fs-7">More than 100 new orders</span>
                    </h3>
                    <div class="card-toolbar">
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-light-primary active fw-bold px-4 me-1"
                                    data-bs-toggle="tab" href="#kt_table_widget_7_tab_1">Month</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-light-primary fw-bold px-4 me-1"
                                    data-bs-toggle="tab" href="#kt_table_widget_7_tab_2">Week</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link btn btn-sm btn-color-muted btn-active btn-active-light-primary fw-bold px-4"
                                    data-bs-toggle="tab" href="#kt_table_widget_7_tab_3">Day</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--end::Header-->

                <!--begin::Body-->
                <div class="card-body py-3">
                    <div class="tab-content">

                        <!--begin::Tap pane-->
                        <div class="tab-pane fade show active" id="kt_table_widget_7_tab_1">
                            <!--begin::Table container-->
                            <div class="table-responsive">
                                <!--begin::Table-->
                                <table class="table align-middle gs-0 gy-3">
                                    <!--begin::Table head-->
                                    <thead>
                                        <tr>
                                            <th class="p-0 w-50px"></th>
                                            <th class="p-0 min-w-150px"></th>
                                            <th class="p-0 min-w-140px"></th>
                                            <th class="p-0 min-w-120px"></th>
                                        </tr>
                                    </thead>
                                    <!--end::Table head-->

                                    <!--begin::Table body-->
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-success">
                                                        <i class="ki-duotone ki-scroll fs-2x text-success"><span
                                                                class="path1"></span><span class="path2"></span><span
                                                                class="path3"></span></i> </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Media
                                                    Device</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Voice and video
                                                    recorder</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">5 day ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-success fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-danger">
                                                        <i class="ki-duotone ki-element-11 fs-2x text-danger"><span
                                                                class="path1"></span><span class="path2"></span><span
                                                                class="path3"></span><span class="path4"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Special
                                                    Meal</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Quona Rice</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">2 day ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-danger fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-primary">
                                                        <i class="ki-duotone ki-compass fs-2x text-primary"><span
                                                                class="path1"></span><span class="path2"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">New
                                                    Users</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Awesome Users</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">4 day ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-primary fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-warning">
                                                        <i class="ki-duotone ki-abstract-26 fs-2x text-warning"><span
                                                                class="path1"></span><span class="path2"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Active
                                                    Customers</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Best Customers</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">1 day ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-warning fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-info">
                                                        <i class="ki-duotone ki-bucket fs-2x text-info"><span
                                                                class="path1"></span><span class="path2"></span><span
                                                                class="path3"></span><span class="path4"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Strawberry
                                                    Boxes</a>
                                                <span class="text-muted fw-semibold d-block fs-7">From Spain</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">7 day ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-info fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <!--end::Table body-->
                                </table>
                            </div>
                            <!--end::Table-->
                        </div>
                        <!--end::Tap pane-->

                        <!--begin::Tap pane-->
                        <div class="tab-pane fade " id="kt_table_widget_7_tab_2">
                            <!--begin::Table container-->
                            <div class="table-responsive">
                                <!--begin::Table-->
                                <table class="table align-middle gs-0 gy-3">
                                    <!--begin::Table head-->
                                    <thead>
                                        <tr>
                                            <th class="p-0 w-50px"></th>
                                            <th class="p-0 min-w-150px"></th>
                                            <th class="p-0 min-w-140px"></th>
                                            <th class="p-0 min-w-120px"></th>
                                        </tr>
                                    </thead>
                                    <!--end::Table head-->

                                    <!--begin::Table body-->
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-info">
                                                        <i class="ki-duotone ki-abstract-41 fs-2x text-info"><span
                                                                class="path1"></span><span class="path2"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Strawberry
                                                    Boxes</a>
                                                <span class="text-muted fw-semibold d-block fs-7">From Spain</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">4 week ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-info fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-danger">
                                                        <i class="ki-duotone ki-element-11 fs-2x text-danger"><span
                                                                class="path1"></span><span class="path2"></span><span
                                                                class="path3"></span><span class="path4"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Special
                                                    Meal</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Quona Rice</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">2 week ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-danger fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-warning">
                                                        <i class="ki-duotone ki-abstract-26 fs-2x text-warning"><span
                                                                class="path1"></span><span class="path2"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Active
                                                    Customers</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Best Customers</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">5 week ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-warning fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <!--end::Table body-->
                                </table>
                            </div>
                            <!--end::Table-->
                        </div>
                        <!--end::Tap pane-->

                        <!--begin::Tap pane-->
                        <div class="tab-pane fade " id="kt_table_widget_7_tab_3">
                            <!--begin::Table container-->
                            <div class="table-responsive">
                                <!--begin::Table-->
                                <table class="table align-middle gs-0 gy-3">
                                    <!--begin::Table head-->
                                    <thead>
                                        <tr>
                                            <th class="p-0 w-50px"></th>
                                            <th class="p-0 min-w-150px"></th>
                                            <th class="p-0 min-w-140px"></th>
                                            <th class="p-0 min-w-120px"></th>
                                        </tr>
                                    </thead>
                                    <!--end::Table head-->

                                    <!--begin::Table body-->
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-success">
                                                        <i class="ki-duotone ki-basket fs-2x text-success"><span
                                                                class="path1"></span><span class="path2"></span><span
                                                                class="path3"></span><span class="path4"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Media
                                                    Device</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Voice and video
                                                    recorder</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">3 month ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-success fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-danger">
                                                        <i class="ki-duotone ki-element-11 fs-2x text-danger"><span
                                                                class="path1"></span><span class="path2"></span><span
                                                                class="path3"></span><span class="path4"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Special
                                                    Meal</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Quona Rice</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">5 month ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-danger fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-warning">
                                                        <i class="ki-duotone ki-abstract-26 fs-2x text-warning"><span
                                                                class="path1"></span><span class="path2"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Active
                                                    Customers</a>
                                                <span class="text-muted fw-semibold d-block fs-7">Best Customers</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">6 month ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-warning fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="symbol symbol-50px me-2">
                                                    <span class="symbol-label bg-light-info">
                                                        <i class="ki-duotone ki-abstract-41 fs-2x text-info"><span
                                                                class="path1"></span><span class="path2"></span></i>
                                                    </span>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="#"
                                                    class="text-gray-900 fw-bold text-hover-primary mb-1 fs-6">Strawberry
                                                    Boxes</a>
                                                <span class="text-muted fw-semibold d-block fs-7">From Spain</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="text-muted fw-semibold d-block fs-8">Ordered</span>

                                                <span class="text-gray-900 fw-bold d-block fs-7">4 month ago</span>
                                            </td>
                                            <td class="text-end">
                                                <span class="badge badge-light-info fs-7 fw-bold">Delivered</span>
                                            </td>
                                            <td class="text-end">
                                                <a href="#"
                                                    class="btn btn-sm btn-icon btn-bg-light btn-active-color-primary">
                                                    <i class="ki-solid ki-dots-horizontal fs-1"></i> </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <!--end::Table body-->
                                </table>
                            </div>
                            <!--end::Table-->
                        </div>
                        <!--end::Tap pane-->
                    </div>
                </div>
                <!--end::Body-->
            </div>
        </div>
    </div>

</div>

<?php include 'inc/footer.php'; ?>
<script src="<?= SPRINT_PLUGIN_URL ?>/assets/js/form.js"></script>