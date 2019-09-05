<?php
require "db_config.php";
if(isset($_POST['action'])){
	$subcatname = filter_var($_POST['subcategoryname'], FILTER_SANITIZE_STRING);
	$catid = filter_var($_POST['categoryid'], FILTER_SANITIZE_NUMBER_INT);
	$subcatdes = filter_var($_POST['description'], FILTER_SANITIZE_STRING);
	$subcatdate = date('y-m-d');
	if($subcatname == "" || $catid == "" || $subcatdes == ""){
		header("location: subcategoryAdd.php");
		exit;
		}
	

	$insertQuery = "INSERT INTO `byensell`.`subcategory` (`id`, `subcategoryname`, `categoryid`, `description`, `createdate`) VALUES ('', '$subcatname', '$catid', '$subcatdes', '$subcatdate')";
	$con->query($insertQuery);
	echo "data inserted";
	}
?>