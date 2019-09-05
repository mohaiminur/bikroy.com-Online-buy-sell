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
        url:'api/getAdmin.php',
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
    	url:'api/getAdmin.php',
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
	  	rows = rows + '<td>'+value.firstname+'</td>';
        rows = rows + '<td>'+value.lastname+'</td>';
	  	rows = rows + '<td>'+value.username+'</td>';
        rows = rows + '<td>'+value.email+'</td>';
        rows = rows + '<td>'+value.password+'</td>';
        rows = rows + '<td>'+value.group+'</td>';
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
    var firstname = $("#create-item").find("input[name='firstname']").val();
    var lastname = $("#create-item").find("input[name='lastname']").val();
    var username = $("#create-item").find("input[name='username']").val();
    var email = $("#create-item").find("input[name='email']").val();
    var password = $("#create-item").find("input[name='password']").val();
    var group = $("#create-item").find("input[name='group']").val();

    if(firstname != '' && lastname != '' && username != '' && email != '' && password != '' && group != ''){
        $.ajax({
            dataType: 'json',
            type:'POST',
            url:form_action,
            data:{firstname:firstname, lastname:lastname, username:username, email:email, password:password, group:group}
        }).done(function(data){
            $("#create-item").find("input[name='firstname']").val('');
            $("#create-item").find("input[name='lastname']").val('');
            $("#create-item").find("input[name='username']").val('');
            $("#create-item").find("input[name='email']").val('');
            $("#create-item").find("input[name='password']").val('');
            $("#create-item").find("input[name='group']").val('');
            getPageData();
            $(".modal").modal('hide');
            toastr.success('Admin Created Successfully.', 'Success Alert', {timeOut: 5000});
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
        url:'api/deleteAdmin.php',
        data:{id:id}
    }).done(function(data){
        c_obj.remove();
        toastr.success('Admin Deleted Successfully.', 'Success Alert', {timeOut: 5000});
        getPageData();
    });

});


/* Edit Item */
$("body").on("click",".edit-item",function(){

    var id = $(this).parent("td").data('id');
    var firstname = $(this).parent("td").prev("td").prev("td").prev("td").prev("td").prev("td").prev("td").text();
    var lastname = $(this).parent("td").prev("td").prev("td").prev("td").prev("td").prev("td").text();
    var username = $(this).parent("td").prev("td").prev("td").prev("td").prev("td").text();
    var email = $(this).parent("td").prev("td").prev("td").prev("td").text();
    var password = $(this).parent("td").prev("td").prev("td").text();
    var group = $(this).parent("td").prev("td").text();

    $("#edit-item").find("input[name='firstname']").val(firstname);
    $("#edit-item").find("input[name='lastname']").val(lastname);
    $("#edit-item").find("input[name='username']").val(username);
    $("#edit-item").find("input[name='email']").val(email);
    $("#edit-item").find("input[name='password']").val(password);
    $("#edit-item").find("input[name='group']").val(group);
    $("#edit-item").find(".edit-id").val(id);

});


/* Updated new Item */
$(".crud-submit-edit").click(function(e){

    e.preventDefault();
    var form_action = $("#edit-item").find("form").attr("action");
    var firstname = $("#edit-item").find("input[name='firstname']").val();
    var lastname = $("#edit-item").find("input[name='lastname']").val();
    var username = $("#edit-item").find("input[name='username']").val();
    var email = $("#edit-item").find("input[name='email']").val();
    var password = $("#edit-item").find("input[name='password']").val();
    var group = $("#edit-item").find("input[name='group']").val();
    var id = $("#edit-item").find(".edit-id").val();

    if(firstname != '' && lastname != '' && username != '' && email != '' && password != '' && group != ''){
        $.ajax({
            dataType: 'json',
            type:'POST',
            url:form_action,
            data:{firstname:firstname, lastname:lastname, username:username, email:email, password:password, group:group,id:id}
        }).done(function(data){
            getPageData();
            $(".modal").modal('hide');
            toastr.success('Admin Updated Successfully.', 'Success Alert', {timeOut: 5000});
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
		            <h2>See All Admin</h2>
		        </div>
		        <div class="pull-right">
				<button type="button" class="btn btn-success" data-toggle="modal" data-target="#create-item">
					  Create Admin
				</button>
		        </div>
		    </div>
		</div>

		<div class="panel panel-primary">
			  <div class="panel-heading">Admin management</div>
			  <div class="panel-body">
				<table class="table table-bordered">
					<thead>
					    <tr>
						<th>First Name</th>
                        <th>Last Name</th>
						<th>Username</th>
                        <th>Email</th>
						<th>Password</th>
                        <th>Group</th>
						
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
		        <h4 class="modal-title" id="myModalLabel">Edit Admin</h4>
		      </div>

		      <div class="modal-body">
		      		<form data-toggle="validator" action="api/updateAdmin.php" method="put">
		      			<input type="hidden" name="id" class="edit-id">

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

