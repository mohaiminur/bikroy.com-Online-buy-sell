<?php

include("header.php");
?>


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
        url:'api/getProduct.php',
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
    	url:'api/getProduct.php',
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
	  	rows = rows + '<td>'+value.title+'</td>';
        rows = rows + '<td>'+value.description+'</td>';
	  	rows = rows + '<td>'+value.user_id+'</td>';
        rows = rows + '<td>'+value.areaid+'</td>';
        rows = rows + '<td>'+value.categoryid+'</td>';
        rows = rows + '<td>'+value.subcategoryid+'</td>';
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
	var title = $("#create-item").find("input[name='title']").val();
    var description = $("#create-item").find("input[name='description']").val();
    var user_id = $("#create-item").find("input[name='user_id']").val();
    var areaid = $("#create-item").find("input[name='areaid']").val();
    var categoryid = $("#create-item").find("input[name='categoryid']").val();
    var password = $("#create-item").find("input[name='password']").val();
    

    if(title != '' && description != '' && user_id != '' && areaid != '' && categoryid != '' && subcategoryid != ''){
        $.ajax({
            dataType: 'json',
            type:'POST',
            url:form_action,
            data:{title:title, description:description, user_id:user_id, areaid:areaid, categoryid:categoryid, subcategoryid:subcategoryid}
        }).done(function(data){
            $("#create-item").find("input[name='title']").val('');
            $("#create-item").find("input[name='description']").val('');
            $("#create-item").find("input[name='user_id']").val('');
            $("#create-item").find("input[name='areaid']").val('');
            $("#create-item").find("input[name='categoryid']").val('');
            $("#create-item").find("input[name='subcategoryid']").val('');
            getPageData();
            $(".modal").modal('hide');
            toastr.success('Product Created Successfully.', 'Success Alert', {timeOut: 5000});
        });
    }else{
        alert('You are missing any field.')
    }


});

/* Remove Item */
$("body").on("click",".remove-item",function(){
    var id = $(this).parent("td").data('id');
    var c_obj = $(this).parents("tr");

    $.ajax({
        dataType: 'json',
        type:'POST',
        url:'api/deleteProduct.php',
        data:{id:id}
    }).done(function(data){
        c_obj.remove();
        toastr.success('Product Deleted Successfully.', 'Success Alert', {timeOut: 5000});
        getPageData();
    });

});


/* Edit Item */
$("body").on("click",".edit-item",function(){

    var id = $(this).parent("td").data('id');
    var title = $(this).parent("td").prev("td").prev("td").prev("td").prev("td").prev("td").prev("td").text();
    var description = $(this).parent("td").prev("td").prev("td").prev("td").prev("td").prev("td").text();
    var user_id = $(this).parent("td").prev("td").prev("td").prev("td").prev("td").text();
    var areaid = $(this).parent("td").prev("td").prev("td").prev("td").text();
    var categoryid = $(this).parent("td").prev("td").prev("td").text();
    var subcategoryid = $(this).parent("td").prev("td").text();

    $("#edit-item").find("input[name='title']").val(title);
    $("#edit-item").find("input[name='description']").val(description);
    $("#edit-item").find("input[name='user_id']").val(user_id);
    $("#edit-item").find("input[name='areaid']").val(areaid);
    $("#edit-item").find("input[name='categoryid']").val(categoryid);
    $("#edit-item").find("input[name='subcategoryid']").val(subcategoryid);
    $("#edit-item").find(".edit-id").val(id);

});


/* Updated new Item */
$(".crud-submit-edit").click(function(e){

    e.preventDefault();
    var form_action = $("#edit-item").find("form").attr("action");
    var title = $("#edit-item").find("input[name='title']").val();
    var description = $("#edit-item").find("input[name='description']").val();
    var user_id = $("#edit-item").find("input[name='user_id']").val();
    var areaid = $("#edit-item").find("input[name='areaid']").val();
    var categoryid = $("#edit-item").find("input[name='categoryid']").val();
    var subcategoryid = $("#edit-item").find("input[name='subcategoryid']").val();
    var id = $("#edit-item").find(".edit-id").val();

    if(title != '' && description != '' && user_id != '' && areaid != '' && categoryid != '' && subcategoryid != ''){
        $.ajax({
            dataType: 'json',
            type:'POST',
            url:form_action,
            data:{title:title, description:description, user_id:user_id, areaid:areaid, categoryid:categoryid, subcategoryid:subcategoryid,id:id}
        }).done(function(data){
            getPageData();
            $(".modal").modal('hide');
            toastr.success('Product Updated Successfully.', 'Success Alert', {timeOut: 5000});
        });
        }else{
        alert('You are missing any of these fields.')
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
		            <h2>See All Product</h2>
		        </div>
		        <div class="pull-right">
				<!--<button type="button" class="btn btn-success" data-toggle="modal" data-target="#create-item">
					  Add Product
				</button>-->
		        </div>
		    </div>
		</div>

		<div class="panel panel-primary">
			  <div class="panel-heading">Product Management</div>
			  <div class="panel-body">
				<table class="table table-bordered">
					<thead>
					    <tr>
						<th>Title</th>
                        <th>Description</th>
						<th>User ID</th>
                        <th>Area ID</th>
						<th>Category ID</th>
                        <th>Subcategory ID</th>
						
						<th width="200px">Action</th>
					    </tr>
					</thead>
					<tbody>
					</tbody>
				</table>

		<ul id="pagination" class="pagination-sm"></ul>
			  </div>
	  </div>
<!--
	    <!-- Create Item Modal -->
		<div class="modal fade" id="create-item" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
		        <h4 class="modal-title" id="myModalLabel">Create Admin</h4>
		      </div>

		      <div class="modal-body">
		      		<form data-toggle="validator" action-data="api/createAdmin.php" method="POST">

		      			<div class="form-group">
							<label class="control-label" for="firstname">First Name:</label>
							<input type="text" name="firstname" class="form-control" data-error="Please enter firstname." required />
							<div class="help-block with-errors"></div>
						</div>
                        
                        <div class="form-group">
							<label class="control-label" for="lastname">Last Name:</label>
							<input type="text" name="lastname" class="form-control" data-error="Please enter lastname." required />
							<div class="help-block with-errors"></div>
						</div>

						<div class="form-group">
							<label class="control-label" for="username">Username:</label>
							<input type="text" name="username" class="form-control" data-error="Please enter Username." required>
							<div class="help-block with-errors"></div>
						</div>
                        
                        <div class="form-group">
							<label class="control-label" for="email">Email:</label>
							<input type="text" name="email" class="form-control" data-error="Please enter email." required/>
							<div class="help-block with-errors"></div>
						</div>

						<div class="form-group">
							<label class="control-label" for="password">Password:</label>
							<input type="password" name="password" class="form-control" data-error="Please enter password." required>
							<div class="help-block with-errors"></div>
						</div>
                        
                        <div class="form-group">
							<label class="control-label" for="group">Group:</label>
							<input type="text" name="group" class="form-control" data-error="Please enter group." required/>
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
		        <h4 class="modal-title" id="myModalLabel">Edit Product</h4>
		      </div>

		      <div class="modal-body">
		      		<form data-toggle="validator" action="api/updateProduct.php" method="put">
		      			<input type="hidden" name="id" class="edit-id">

		      			<div class="form-group">
							<label class="control-label" for="firstname">title : </label>
							<input type="text" name="title" class="form-control" data-error="Please enter firstname." required />
							<div class="help-block with-errors"></div>
						</div>
                        
                        <div class="form-group">
							<label class="control-label" for="lastname">Description:</label>
							<input type="text" name="description" class="form-control" data-error="Please enter lastname." required />
							<div class="help-block with-errors"></div>
						</div>

						<div class="form-group">
							<label class="control-label" for="username">User Id:</label>
							<input type="text" name="user_id" class="form-control" data-error="Please enter Username." required>
							<div class="help-block with-errors"></div>
						</div>
                        
                        <div class="form-group">
							<label class="control-label" for="email">areaid:</label>
							<input type="text" name="areaid" class="form-control" data-error="Please enter email." required/>
							<div class="help-block with-errors"></div>
						</div>

						<div class="form-group">
							<label class="control-label" for="password">categoryid:</label>
							<input type="text" name="categoryid" class="form-control" data-error="Please enter password." required>
							<div class="help-block with-errors"></div>
						</div>
                        
                        <div class="form-group">
							<label class="control-label" for="group">subcategoryid</label>
							<input type="text" name="subcategoryid" class="form-control" data-error="Please enter group." required/>
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

