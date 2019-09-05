<?php
require "db_config.php";
if(isset($_POST['action'])){
	$subareaid = filter_var($_POST['subareaid'], FILTER_SANITIZE_NUMBER_INT);
	$subareaname = filter_var($_POST['subareaname'], FILTER_SANITIZE_STRING);
	$areaid = filter_var($_POST['areaid'], FILTER_SANITIZE_NUMBER_INT);
	if($subareaid == "" || $subareaname == "" || $areaid == ""){
		header("location: subareaUpdate.php");
		exit;
		}
	
	$updateQuery = "update subarea set subareaname='$subareaname', areaid='$areaid' where id='$subareaid'";
	$con->query($updateQuery);
	if($con->affected_rows == 1){
	echo "Data Updated";}
	else {
		echo "problem updating data";
		}

	}
?>