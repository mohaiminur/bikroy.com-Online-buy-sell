<?php require('header.php'); 
require "api/db_config.php";
?>

<?php 
include 'sidebar.php';
?>

<style>
    .box-icon a i{
        top: -6px;
    }
    
    .fieldsz, input[type="text"], input[type="button"], input[type="reset"]{
        border-radius: 0;
        font-family: arial;
    }
    .form-title{
        margin-top: -12px;
    }
</style>

<script>
$(document).ready(function(e) {
	$("#subcategoryUpdate").hide();
	//Start Subcategory Add
	$("#subcategoryAdd").click(function(e) {
		var subcatname = $("#subcatname").val();
		var catid = $("#catId").val();
		var subcatdes = $("#subcatdes").val();
		
		$.post("api/subcategoryAdd.php",{
			subcategoryname: subcatname,
			categoryid: catid,
			description: subcatdes,
			action : "add"
			},function(data){
				alert(data);
				clearform();
				changePagination('0');
				});
    });
	//End Subcategory Add
	//Start Subcategory Update	
	$("#subcategoryUpdate").click(function(e) {
		var id = $("#subcatid").val();
		var subcatname = $("#subcatname").val();
		var catid = $("#catId").val();
		var subcatdes = $("#subcatdes").val();
		
		$.post("api/subcategoryUpdate.php",{
			id: id,
			subcategoryname: subcatname,
			categoryid: catid,
			subcategorydescription: subcatdes,
			action : "update"
			},function(data){
				alert(data);
				 clearform();
				 changePagination('0');
				 $("#subcategoryAdd").show(200);
				$("#subcategoryUpdate").hide(200);
				});
	});
	//End Subcategory Update
	function clearform(){
		$("#subcatid").val('');
		$("#subcatname").val('');
		$("#catId").val('');
		$("#subcatdes").val('');
		}
	$("#clearform").click(function(e) {
        clearform();
    });	
	
	// call changepagination(0) when the page loads
	changePagination('0');
	//start subcategory delete
	$("#pageData").on("click",".delbtn",function(){
	var confirmdelete = confirm("Do you really want to delete this item?");
	if(confirmdelete == false) {return;}
	//alert($(this).attr("rid"));
	var recordtodelete = $(this).attr("rid");
	//alert("you want to delete id: " + recordtodelete );
	//return;
	var dataString = 'recordId='+ recordtodelete;
	     $.ajax({
           type: "POST",
           url: "api/subcategoryDelete.php",
           data: dataString,
           cache: false,
           success: function(result){
			  // alert(result);
           //$(".flash").hide();
           //      $("#pageData").html(result);
		   if(result == "success"){
			   //alert("Record Deleted Successfully");
			   //$("#message").html("Record Deleted Successfully").show(2000).hide(4000);
			   alert("Record Deleted Successfully!!");
			   changePagination('0');
			   
			   }
		   else if (result == "error"){
			   alert("problem deleting record");
			   }
		   else {
			   alert("contact admin!!");
			   }		   
           }
      });
	
	});
	//end subcategory delete
	//start subcategory edit
	$("#pageData").on("click",".editbtn",function(){
	$("#subcategoryAdd").hide(200);
	$("#subcategoryUpdate").show(200);
	
	var subcatid = $(this).parent().parent().find("#editsubcatid").text();
	var subcatname = $(this).parent().parent().find("#editsubcatname").text();
	var catid = $(this).parent().parent().find("#editcatid").text();
	var subcatdes = $(this).parent().parent().find("#editsubcatdes").text();
	
		$("#subcatid").val(subcatid);
		$("#subcatname").val(subcatname);
		$("#catId").val(catid);
		$("#subcatdes").val(subcatdes);
		window.location = "#subcategoryForm";
		
	});
	//end subcategory edit
});
//change pagenation start
function changePagination(pageId){
    
     var dataString = 'pageId='+ pageId;
     $.ajax({
           type: "POST",
           url: "api/subcategorySelect.php",
           data: dataString,
           cache: false,
           success: function(result){
			   //alert(result);
			   if(result == "No Data Found"){
				   //var currentpagenumber = $("#pagenumber").text();
				   //alert($("#pagenum").text());
				   changePagination($("#pagenum").text() - 1);
				   return;
				   }
           //$(".flash").hide();
                 $("#pageData").html(result);
           }
      });
}
//change pagenation end
</script>


    <div class="box col-md-10">
        <div class="box-inner">
            <div class="box-header well" data-original-title="">
               <div class="form-title">
                    <h2><i class="glyphicon glyphicon-edit"></i> Form</h2>

                    
                </div>
            </div>
            <div class="box-content">

		 <div class="control-group">
                <form role="form">
                    <div class="form-group">
                        

<div id="subcategoryForm">
<form id="subcategorymanagement" method="post">
<table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <th scope="row">id :</th>
    <td>&nbsp;</td>
    <td><input type="text" id="subcatid" readonly placeholder="auto incremant"/></td>
  </tr>
  <tr>
    <th scope="row">Subcategory Name : </th>
    <td>&nbsp;</td>
    <td><input class="clstext" type="text" id="subcatname" name="subcatname" placeholder="Subcategory Name" required /></td>
  </tr>
  <tr>
    <th scope="row">Category ID : </th>
    <td>&nbsp;</td>
    <td><!--<input class="clstext" type="text" id="catid" name="catid" placeholder="Category ID" required/>-->
     <select id="catId" class="fieldsz">
								<option value="-1" selected>Select Category</option>  <?php
								$result = $con->query("select * from category");
								while($row = $result->fetch_array()){
									echo "<option value=".$row['id'].">".$row['categoryname']."</option>";
									}
								
								?>
                                </select>
    </td>
  </tr>
  <tr>
    <th scope="row">Subcategory Description : </th>
    <td>&nbsp;</td>
    <td><input class="clstext" type="text" id="subcatdes" name="subcatdes" placeholder="Subcategory Description" required/></td>
  </tr>
    <tr>
    <td>
    <input type="button" id="subcategoryAdd" value="Add Subcategory" class=" glyphicon glyphicon-edit icon-white btn btn-info editbtn"/>
    <input type="button" id="subcategoryUpdate" value="Update Subcategory" class=" glyphicon glyphicon-edit icon-white btn btn-info editbtn"/>
    <input type="button" id="clearform" value="Clear" class=" glyphicon glyphicon-trash icon-white btn btn-danger delbtn "/>
  </tr>
</table>
</form>
</div>


					

					</div>
  
            </div>
        </div>
    </div>
    <!--/span-->
<!--/row-->

<?php if (!isset($no_visible_elements) || !$no_visible_elements) { ?>
   

		<div class="box-inner">
            <div class="box-header well" data-original-title="">
               <div class="form-title">
                <h2><i class="glyphicon glyphicon-edit"></i>Show Table</h2>

                
                </div>
            </div>
            <div class="box-content">

				<div class="control-group">
					<div role="form">
						<div class="form-group">
						
						<div id="pageData"></div>
						
						</div>
								  
					</div>
				</div>
			</div><!--/span-->

    
    
	 
	
    </div><!--/span-->
<!--/row-->

	<!-- content ends -->
    <!--/#content.col-md-0-->

   </div><!--/row-->

   <!-- content ends -->
</div><!--/#content.col-md-0-->
<?php } ?>
</div><!--/fluid-row-->
<?php require('footer.php'); ?>