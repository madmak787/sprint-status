<div class="modal fade" id="modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered mw-1000px">
        <div class="modal-content rounded">
            <div class="modal-header pb-0 border-0 justify-content-end">
                <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
                    <i class="ki-duotone ki-cross fs-1">
                        <span class="path1"></span>
                        <span class="path2"></span>
                    </i>
                </div>
            </div>
            <div class="modal-body scroll-y px-10 px-lg-15 pt-0 pb-15">
                <div class="mb-13 text-center">
                    <h1 class="mb-3" id="title"><?=$title?></h1>
                    <div class="text-muted fw-semibold fs-5" id="description"></div>
                </div>
                <div id="content">
                    <form class="form" action="<?=admin_url('admin-ajax.php')?>">
                        <?=$content?>
                        <div class="text-center">
                            <button type="reset" class="btn btn-light me-3">
                                Cancel
                            </button>
                            <input type="hidden" name="action" value="" />
                            <input type="hidden" name="id" value="" />
                            <button type="submit" class="btn btn-primary">
                                <span class="indicator-label" id="btn-label"></span>
                                <span class="indicator-progress">
                                    Please wait... <span class="spinner-border spinner-border-sm align-middle ms-2"></span>
                                </span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
