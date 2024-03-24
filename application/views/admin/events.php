<script type="text/javascript">
    function del_q(id) {
        cnfr = confirm("Are you sure you want to delete this Event");
        if (cnfr) {
            document.location = "<?=BASEURL?>admin/delete-event/?id=" + id;
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
                            <th>Title</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Inside Village</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>SR.#</th>
                            <th>Title</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Inside Village</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <?php
                        if (count($events) > 0) {
                            foreach ($events as $key => $q): ?>
                                <tr>
                                    <td><?=($key+1)?></td>
                                    <td><?=$q['title']?></td>
                                    <td><?=$q['email']?></td>
                                    <td><?=$q['phone']?></td>
                                    <td>
                                        <?php if ($q['in_village'] == '1'): ?>
                                            <span class="badge badge-success">yes</span>
                                        <?php else: ?>
                                            <span class="badge badge-primary">no</span>
                                        <?php endif ?>
                                    </td>
                                    <td class="actions">
                                        <a href="javascript:del_q('<?=$q['event_id']?>')" class="btn btn-sm btn-icon btn-pure btn-default on-default remove-row"><i class="icon md-delete" aria-hidden="true"></i></a>
                                        <a href="<?=BASEURL.'admin/edit-event?id='.$q['event_id'].'/'?>" class="btn btn-sm btn-icon btn-pure btn-default on-default edit-row"><i class="icon md-edit" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                                <?php endforeach;
                        } //end if
                        else {
                            ?>
                            <tr>
                                <td>
                                    No Event found.
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