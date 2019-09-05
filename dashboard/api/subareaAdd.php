<?php
require "db_config.php";
if(isset($_POST['action'])){
	$subareaid = filter_var($_POST['subareaid'], FILTER_SANITIZE_STRING);
	$saname = filter_var($_POST['subareaname'], FILTER_SANITIZE_STRING);
	$areaid = filter_var($_POST['areaid'], FILTER_SANITIZE_NUMBER_INT);
	$subadate = date('y-m-d');
	if($saname == "" || $areaid == ""){
		header("location: subareaAdd.php");
		exit;
		}
	$insertQuery = "insert into subarea values('','$saname','$areaid','$subadate')";
	$con->query($insertQuery);
	echo "data inserted";
	}
?>