<?php

include("header.php");?>


        
       <?php
include("sidebar.php");
?>

	
	<script>
	$( document ).ready(function() {

var page = 1;
var current_page = 1;
var total_page = 0;
var is_ajax_fire = 0;

manageData();

/* manage data list */
function manageData() {
    $.ajax({
        dataType: 'json',
        url:'api/getCategory.php',
        data: {page:page}
    }).done(function(data){
    	total_page = Math.ceil(data.total/10);
    	current_page = page;

    	$('#pagination').twbsPagination({
	        totalPages: total_page,
	        visiblePages: current_page,
	        onPageClick: function (event, pageL) {
	        	page = pageL;
                if(is_ajax_fire != 0){
	        	  getPageData();
                }
	        }
	    });

    	manageRow(data.data);
        is_ajax_fire = 1;

    });

}

/* Get Page Data*/
function getPageData() {
	$.ajax({
    	dataType: 'json',
    	url:'api/getCategory.php',
    	data: {page:page}
	}).done(function(data){
		manageRow(data.data);
	});
}


/* Add new Item table row */
function manageRow(data) {
	var	rows = '';
	$.each( data, function( key, value ) {
	  	rows = rows + '<tr>';
		//rows = rows + '<td>'+value.id+'</td>';
	  	rows = rows + '<td>'+value.categoryname+'</td>';
	  	rows = rows + '<td>'+value.categorydescription+'</td>';
	  	rows = rows + '<td data-id="'+value.id+'">';
        rows = rows + '<button data-toggle="modal" data-target="#edit-item" class="btn btn-primary edit-item">Edit</button> ';
        rows = rows + '<button class="btn btn-danger remove-item">Delete</button>';
        rows = rows + '</td>';
	  	rows = rows + '</tr>';
	});

	$("tbody").html(rows);
}

/* Create new Item */
$(".crud-submit").click(function(e){
   // e.preventDefault();
    var form_action = $("#create-item").find("form").attr("action-data");
    var categoryname = $("#create-item").find("input[name='categoryname']").val();
    var categorydescription = $("#create-item").find("textarea[name='categorydescription']").val();

    if(categoryname != '' && categorydescription != ''){
        $.ajax({
            dataType: 'json',
            type:'POST',
            url:form_action,
            data:{categoryname:categoryname, categorydescription:categorydescription}
        }).done(function(data){
            $("#create-item").find("input[name='categoryname']").val('');
            $("#create-item").find("textarea[name='categorydescription']").val('');
            getPageData();
            $(".modal").modal('hide');
            toastr.success('Item Created Successfully.', 'Success Alert', {timeOut: 5000});
        });
    }else{
        alert('You are missing categoryname or categorydescription.')
    }


});

/* Remove Item */
$("body").on("click",".remove-item",function(){
    var id = $(this).parent("td").data('id');
    var c_obj = $(this).parents("tr");

    $.ajax({
        dataType: 'json',
        type:'POST',
        url:'api/delete.php',
        data:{id:id}
    }).done(function(data){
        c_obj.remove();
        toastr.success('Item Deleted Successfully.', 'Success Alert', {timeOut: 5000});
        getPageData();
    });

});


/* Edit Item */
$("body").on("click",".edit-item",function(){

    var id = $(this).parent("td").data('id');
    var categoryname = $(this).parent("td").prev("td").prev("td").text();
    var categorydescription = $(this).parent("td").prev("td").text();

    $("#edit-item").find("input[name='categoryname']").val(categoryname);
    $("#edit-item").find("textarea[name='categorydescription']").val(categorydescription);
    $("#edit-item").find(".edit-id").val(id);

});


/* Updated new Item */
$(".crud-submit-edit").click(function(e){

    e.preventDefault();
    var form_action = $("#edit-item").find("form").attr("action");
    var categoryname = $("#edit-item").find("input[name='categoryname']").val();

    var categorydescription = $("#edit-item").find("textarea[name='categorydescription']").val();
    var id = $("#edit-item").find(".edit-id").val();

    if(categoryname != '' && categorydescription != ''){
        $.ajax({
            dataType: 'json',
            type:'POST',
            url:form_action,
            data:{categoryname:categoryname, categorydescription:categorydescription,id:id}
        }).done(function(data){
            getPageData();
            $(".modal").modal('hide');
            toastr.success('Item Updated Successfully.', 'Success Alert', {timeOut: 5000});
        });
    }else{
        alert('You are missing catTitle or description.')
    }

});
});
	</script>
    <link href="css/toastr.min.css" rel="stylesheet">
    
	
    <style type="text/css">
    	.modal-dialog, .modal-content{
		z-index:1051;
		}
    </style>


<div id="content" class="col-lg-10 col-sm-10">
<!--=========================================== -->
<div class="container">
		<div class="row">
		    <div class="col-lg-12 margin-tb">					
		        <div class="pull-left">
		            <h2>See All Category</h2>
		        </div>
		        <div class="pull-right">
				<button type="button" class="btn btn-success" data-toggle="modal" data-target="#create-item">
					  Create Category
				</button>
		        </div>
		    </div>
		</div>

		<div class="panel panel-primary">
			  <div class="panel-heading">Category management</div>
			  <div class="panel-body">
				<table class="table table-bordered">
					<thead>
					    <tr>
						<th>Title</th>
						<th>Description</th>
						<th width="200px">Action</th>
					    </tr>
					</thead>
					<tbody>
					</tbody>
				</table>

		<ul id="pagination" class="pagination-sm"></ul>
			  </div>
	  </div>

	    <!-- Create Item Modal -->
		<div class="modal fade" id="create-item" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		        <h4 class="modal-title" id="myModalLabel">Create Item</h4>
		      </div>

		      <div class="modal-body">
		      		<form data-toggle="validator" action-data="api/create.php" method="POST">

		      			<div class="form-group">
							<label class="control-label" for="title">Title:</label>
							<input type="text" name="categoryname" class="form-control" data-error="Please enter title." required />
							<div class="help-block with-errors"></div>
						</div>

						<div class="form-group">
							<label class="control-label" for="title">Description:</label>
							<textarea name="categorydescription" class="form-control" data-error="Please enter description." required></textarea>
							<div class="help-block with-errors"></div>
						</div>

						<div class="form-group">
							<button type="submit" class="btn crud-submit btn-success">Submit</button>
						</div>

		      		</form>

		      </div>
		    </div>

		  </div>
		</div>

		<!-- Edit Item Modal -->
		<div class="modal fade" id="edit-item" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		        <h4 class="modal-title" id="myModalLabel">Edit Item</h4>
		      </div>

		      <div class="modal-body">
		      		<form data-toggle="validator" action="api/update.php" method="put">
		      			<input type="hidden" name="id" class="edit-id">

		      			<div class="form-group">
							<label class="control-label" for="title">Title:</label>
							<input type="text" name="categoryname" class="form-control" data-error="Please enter title." required />
							<div class="help-block with-errors"></div>
						</div>

						<div class="form-group">
							<label class="control-label" for="title">Description:</label>
							<textarea name="categorydescription" class="form-control" data-error="Please enter description." required></textarea>
							<div class="help-block with-errors"></div>
						</div>

						<div class="form-group">
							<button type="submit" class="btn btn-success crud-submit-edit">Submit</button>
						</div>

		      		</form>

		      </div>
		    </div>
		  </div>
		</div>

	</div>


  
</div>
  
  
  
  <!-- content starts -->
  


  
  
  
    <?php
include("footer.php");
?>

