<?php
require "db_config.php";
if(isset($_POST['recordId'])){
	$id = filter_var($_POST['recordId'], FILTER_SANITIZE_NUMBER_INT);
	
	$deleteQuery = "delete from  subarea where id = $id";
	$con->query($deleteQuery);
	if($con->affected_rows == 1 ){
	echo "success";
	}
	else {
		echo "error";
		}
		
}

?>