<div class="page animsition">
    <div class="page-header">
      	<h1 class="page-title" style="text-transform: uppercase;">
      		<?=$page_title?>
		</h1>
      	<ol class="breadcrumb">
	        <li><a href="<?=BASEURL?>admin">Admin</a></li>
            <li style="text-transform: capitalize;"><?=$page_title?></li>
      	</ol>
    </div><!-- /page-header -->
    <?php if (isset($_GET['msg'])):?>
		<div class="bg-success well">
			<p><?=$_GET['msg']?></p>
		</div>
	<?php endif;?>
    <div class="page-content container-fluid">
      	<div class="panel">
	        <div class="panel-heading">
	          	<h3 class="panel-title"><?=$page_title?></h3>
	        </div><!-- /panel-heading -->
	        <div class="panel-body">
	          <form id="exampleFullForm" autocomplete="off" enctype="multipart/form-data" method="post" action="
	          	<?php
		  		if($mode != "edit")echo BASEURL."admin/post-event";
			  	else echo BASEURL."admin/update-event";
		  		?>">
		  		<?php
				$required_string = "required";
				if(isset($mode) && $mode=="edit") {?>
					<input type="hidden" name="mode" value="edit" />
					<input type="hidden" name="aid" value="<?=$_GET['id']?>" />
					<input type="hidden" name="security" value="1ee344ecee344e778694777eb3323a" />
				<?php $required_string = '';
				}?>

	            <div class="row row-lg">
					
					<div class="col-lg-12 form-horizontal">
						<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Title
								<span class="required">*</span>
							</label>
							<div class=" col-lg-12 col-sm-9">
								<input type="text" class="form-control" name="title" placeholder="Event Title" required="" value="<?=$q['title']?>">
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /form-horizontal -->

					<?php if (1==2): ?>
						<div class="col-lg-6 form-horizontal">
							<div class="form-group form-material">
								<label class="col-lg-12 col-sm-3 control-label">Date
									<span class="required">*</span>
								</label>
								<div class=" col-lg-12 col-sm-9">
									<input type="date" class="form-control" name="event_at" placeholder="Date" required="" value="<?=date('Y-m-d',strtotime($q['event_at']))?>">
								</div><!-- /12 -->
							</div><!-- /form-group -->
						</div><!-- /form-horizontal -->
					<?php endif ?>

					<div class="col-lg-6 form-horizontal">
						<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Email</label>
							<div class=" col-lg-12 col-sm-9">
								<input type="email" class="form-control" name="email" placeholder="Email" value="<?=$q['email']?>">
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /form-horizontal -->

					<div class="col-lg-6 form-horizontal">
						<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Phone</label>
							<div class=" col-lg-12 col-sm-9">
								<input type="phone" class="form-control" name="phone" placeholder="Phone" value="<?=$q['phone']?>">
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /form-horizontal -->

					<div class="col-lg-12 form-horizontal">
						<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Address
								<span class="required">*</span>
							</label>
							<div class=" col-lg-12 col-sm-9">
								<input type="text" class="form-control" name="address" placeholder="Address" required="" value="<?=$q['address']?>">
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /form-horizontal -->

					<div class="col-lg-12 form-horizontal">
		            	<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Detail
								<span class="required">*</span>
							</label>
							<div class=" col-lg-12 col-sm-9">
								<textarea class="form-control" placeholder="Detail" name="detail" required="required"><?=$q['detail']?></textarea>
								<!-- <textarea class="form-control" id="summernoteTextarea" placeholder="Detail" name="detail" data-plugin="summernote" required="required"><?=$q['detail']?></textarea> -->
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /12/form-horizontal -->

					<div class="col-lg-12 form-horizontal">
		                <div class="example-wrap">
							<h4 class="example-title">Image</h4>
							<div class="example">
								<input type="file" id="input-file" data-plugin="dropify" data-default-file="<?=UPLOADS.$q['image']?>"/>
								<input type="text" name="image" value="<?=$q['image']?>" hidden>
							</div><!-- /example -->
						</div><!-- /example-wrap -->
	              	</div><!-- /12/form-horizontal -->

					<div class="col-lg-12 form-horizontal">
						<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Google Map</label>
							<div class=" col-lg-12 col-sm-9">
								<textarea name="google_map" class="form-control" rows="3"><?=$q['google_map']?></textarea>
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /form-horizontal -->

					<div class="col-lg-6 form-horizontal">
						<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Latitude
								<span class="required">*</span>
							</label>
							<div class=" col-lg-12 col-sm-9">
								<input type="text" class="form-control" name="lat" placeholder="Latitude" required="" value="<?=$q['lat']?>">
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /form-horizontal -->

					<div class="col-lg-6 form-horizontal">
						<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Longitude
								<span class="required">*</span>
							</label>
							<div class=" col-lg-12 col-sm-9">
								<input type="text" class="form-control" name="long" placeholder="Longitude" required="" value="<?=$q['long']?>">
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /form-horizontal -->

					<div class="col-lg-4 form-horizontal">
						<div class="form-group form-material">
							<label class="col-lg-12 col-sm-3 control-label">Inside Village
								<span class="required">*</span>
							</label>
							<div class=" col-lg-12 col-sm-9">
								<select name="in_village" class="form-control">
									<?php if ($q['in_village'] == '0'): ?>
										<option value="1">YES</option>
										<option value="0" selected>NO</option>
									<?php else: ?>
										<option value="1" selected>YES</option>
										<option value="0">NO</option>
									<?php endif ?>
								</select>
							</div><!-- /12 -->
						</div><!-- /form-group -->
					</div><!-- /form-horizontal -->

	              	<div class="form-group form-material col-lg-12 text-right padding-top-m">
	                	<button type="submit" class="btn btn-primary" id="validateButton1">Submit</button> <a href="<?=BASEURL.'admin/events/all'?>" class="btn btn-danger">Cancel</a>
	              	</div><!-- /form-group -->
	            </div><!-- /row/row-lg -->
	          </form>
	        </div><!-- /panel-body -->
      </div><!-- /panel -->
    </div>
</div><!-- /page/animsition -->


<script>
$(function(){
	$("#input-file").on('change',function(){
		$("#validateButton1").text('Wait File Is Uploading');
		var data = new FormData();
    	data.append('img', $(this).prop('files')[0]);
    	$(".theatre-cover").fadeIn(300);
	    $.ajax({
	        type: 'POST',
	        processData: false,
	        contentType: false,
	        data: data,
	        url: '<?=BASEURL?>admin/post-photo-ajax',
	        dataType : 'json',
	        success: function(resp){
	        	$(".theatre-cover").fadeOut(300);
	       		if (resp.status == true)
	       		{
	       			$("#validateButton1").removeAttr('disabled');
	       			$("#validateButton1").text('Submit');
	       			$("input[name='image']").val(resp.data);
	       		}
	       		else
	       		{
	       			alert(resp.msg)
	       			$("#validateButton1").text('Upload An Image First');
	       		}
	        }
	    });
	})
})



$(document).ready(function() {
    $('#summernoteTextarea').summernote({
        height: 300,
        callbacks: {
            onImageUpload: function(files) {
                var formData = new FormData();
                formData.append('file', files[0]);
                $.ajax({
                    url: '<?=BASEURL?>admin/post-photo-ajax', // Change to your upload image URL
                    method: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        var image_url = JSON.parse(response).url;
                        $('#summernoteTextarea').summernote('insertImage', image_url);
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                    }
                });
            }
        }
    });
});


</script>
