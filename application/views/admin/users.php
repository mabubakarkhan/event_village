<script type="text/javascript">
    function del_q(id) {
        cnfr = confirm("Are you sure you want to delete this User");
        if (cnfr) {
            document.location = "<?=BASEURL?>admin/delete-user/?id=" + id;
        }
    }
</script>
<div class="page animsition">
    <div class="page-header">
        <h1 class="page-title" style="text-transform: uppercase;"><?=$page_title?></h1>
        <ol class="breadcrumb">
            <li><a href="<?=BASEURL?>admin">Admin</a></li>
            <li style="text-transform: capitalize;"><?=$page_title?></li>
        </ol>
        <div class="page-header-actions">
            <a class="btn btn-sm btn-success btn-round" href='<?=BASEURL."admin/add-event"?>'>
                <i class="icon md-plus" aria-hidden="true"></i>
                <span class="hidden-xs">Add Event</span>
            </a>

        </div><!-- /page-header-actions -->
    </div><!-- /page-header -->
    <?php if ($msg_code): ?>
    <div class="bg-success well">
        <p><?=$msg_code?></p>
    </div>
    <?php endif;?>
    
    <div class="page-content">
        <div class="panel">
            <header class="panel-heading">
                <div class="panel-actions"></div>
                <h3 class="panel-title">Data</h3>
            </header>
            <div class="panel-body">
                <table class="table table-bordered table-hover dataTable table-striped width-full" data-plugin="dataTable">
                    <thead>
                        <tr>
                            <th>SR.#</th>
                            <th>Email</th>
                            <th>Since</th>
                            <th>Status</th>
                            <th>Action</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>SR.#</th>
                            <th>Email</th>
                            <th>Since</th>
                            <th>Status</th>
                            <th>Action</th>
                            <th>Delete</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <?php
                        if (count($users) > 0) {
                            foreach ($users as $key => $q): ?>
                                <tr>
                                    <td><?=($key+1)?></td>
                                    <td><?=$q['email']?></td>
                                    <td><?=date('d-m-Y',strtotime($q['at']))?></td>
                                    <td>
                                        <?php if ($q['status'] == 'active'): ?>
                                            <span class="badge badge-success">active</span>
                                        <?php else: ?>
                                            <span class="badge badge-danger">inactive</span>
                                        <?php endif ?>
                                    </td>
                                    <td>
                                        <select class="form-group changeStatus" data-id="<?=$q['status']?>">
                                            <option value="null">Change Status</option>
                                            <option value="active">Active</option>
                                            <option value="inactive">Inactive</option>
                                        </select>
                                    </td>
                                    <td class="actions">
                                        <a href="javascript:del_q('<?=$q['user_id']?>')" class="btn btn-sm btn-icon btn-pure btn-default on-default remove-row"><i class="icon md-delete" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                                <?php endforeach;
                        } //end if
                        else {
                            ?>
                            <tr>
                                <td>
                                    No User found.
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <?php
                        }?>
                    </tbody>
                </table>
            </div><!-- /panel-body -->
        </div><!-- /panel -->
      <!-- End Panel Basic -->
    </div><!-- /page-content -->
</div><!-- /page/animsition -->


<script>
$(document).on('click', '.changeStatus', function(event) {
    event.preventDefault();
    $id = $(this).attr('data-id');
    $status = $(this).attr('data-status');
    if ($status != 'null') {
        $(".theatre-cover").fadeIn('300');
        $.post('<?=BASEURL."admin/change-user-status"?>', {
            id: $id,
            status: $status
        }, function(resp) {
            resp = $.parseJSON(resp);
            $(".theatre-cover").fadeOut('300');
            alert(resp.msg);
        });
    }
});
</script>