<?php require('header.php');
require "api/db_config.php"
 ?>
 <?php
	include 'sidebar.php'
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
	$("#subareaUpdate").hide();
	//start subarea add
    $("#subareaAdd").click(function(e) {
		var subareaid = $("#said").val();
		var saname = $("#subareaname").val();
		var aid = $("#arealist").val();
		
		$.post("api/subareaAdd.php",{
			subareaid : subareaid,
			subareaname: saname,
			areaid: aid,
			action : "add"
			},function(data){
				alert(data);
				clearform();
				changePagination('0');
				});
		
    });
	//end subarea add
	//start subarea update
	$("#subareaUpdate").click(function(e) {
		var sareaid = $("#said").val();
		var subareaname = $("#subareaname").val();
		var areaid = $("#arealist").val();
		
		$.post("api/subareaUpdate.php",{
			subareaid: sareaid,
			subareaname: subareaname,
			areaid: areaid,
			action : "add"
			},function(data){
				alert(data);
				clearform();
				changePagination('0');
				});
	});
	//end subarea update
	function clearform(){
		$("#said").val('');
		$("#subareaname").val('');
		$("#arealist").val('');
		}
	$("#clearform").click(function(e) {
        clearform();
    });	
	
	changePagination('0');
	//start area delete
	$("#pageData").on("click",".delbtn",function(){
	var confirmdelete = confirm("Do you really want to delete this item?");
	if(confirmdelete == false) {return;}
	//alert($(this).attr("rid"));
	var recordtodelete = $(this).attr("rid");
	var dataString = 'recordId='+ recordtodelete;
	     $.ajax({
           type: "POST",
           url: "api/subareaDelete.php",
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
	//end area delete
	//start area edit
	$("#pageData").on("click",".editbtn",function(){
	$("#subareaAdd").hide(200);
	$("#subareaUpdate").show(200);
	var subareaid = $(this).parent().parent().find("#editsubareaid").text();
	var subareaname = $(this).parent().parent().find("#editsubareaname").text();
	var areaid = $(this).parent().parent().find("#editareaid").text();
	
		$("#said").val(subareaid);
		$("#subareaname").val(subareaname);
		$("#arealist").val(areaid);
		window.location = "#subareaForm";
		
	});
	//end area edit
});
//change pagenation start
function changePagination(pageId){
    
     var dataString = 'pageId='+ pageId;
     $.ajax({
           type: "POST",
           url: "api/subareaSelect.php",
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
                        

<div id="subareaForm">
<form id="subareamanagement" method="post">
<table width="100%" border="0" cellspacing="5" cellpadding="0">
  <tr>
    <th scope="row">Subarea Id :</th>
    <td>&nbsp;</td>
    <td><input type="text" id="said" readonly placeholder="auto incremant"/></td>
  </tr>
  <tr>
    <th scope="row">subareaname : </th>
    <td>&nbsp;</td>
    <td><input class="clstext" type="text" id="subareaname" name="subareaname" placeholder="Subarea Name" required /></td>
  </tr>
  <tr>
    <th scope="row">Area ID : </th>
    <td>&nbsp;</td>
    <td>
    <select id="arealist" class="fieldsz">
								<option value="-1" selected>Select Area</option> 
                                 <?php
								$result = $con->query("select * from area");
								while($row = $result->fetch_array()){
									echo "<option value=".$row['id'].">".$row['areaname']."</option>";
									}
								
								?>
                                </select>
    </td>
  </tr>
  <tr>
    <td>
    <input type="button" id="subareaAdd" value="Add Subarea" class=" glyphicon glyphicon-edit icon-white btn btn-info editbtn"/>
    <input type="button" id="subareaUpdate" value="Update Subarea" class=" glyphicon glyphicon-edit icon-white btn btn-info editbtn"/>
    <input type="button" id="clearform" value="Clear" class="glyphicon glyphicon-trash icon-white btn btn-danger delbtn "/> </td>

  </tr>
</table>
</form>
</div>


					

					</div>
  
            </div>
        </div>
    </div>
    <!--/span-->


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
		</div><!--/row-->

    
    
	 
	
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