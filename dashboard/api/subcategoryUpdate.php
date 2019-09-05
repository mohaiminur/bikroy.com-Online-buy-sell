<?php
require "db_config.php";
if(isset($_POST['action'])){
	$id = filter_var($_POST['id'], FILTER_SANITIZE_NUMBER_INT);
	$subcatname = filter_var($_POST['subcategoryname'], FILTER_SANITIZE_STRING);
	$catid = filter_var($_POST['categoryid'], FILTER_SANITIZE_NUMBER_INT);
	$subcatdes = filter_var($_POST['subcategorydescription'], FILTER_SANITIZE_STRING);
	$subcatdate = date('y-m-d');
	if($subcatname == "" || $catid == "" || $subcatdes == ""){
		header("location: subcategoryUpdate.php");
		exit;
		}

	$updateQuery = "UPDATE `byensell`.`subcategory` SET `subcategoryname` = '$subcatname',`categoryid` = '$catid',`description` = '$subcatdes',`createdate` = '$subcatdate' WHERE `subcategory`.`id` ='$id'";
	$con->query($updateQuery);
	if($con->affected_rows == 1){
	echo "Data Updated";}
	else {
		echo "problem updating data";
		}
	}

?>