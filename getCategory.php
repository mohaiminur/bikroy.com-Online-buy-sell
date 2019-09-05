<?php
require "function/connection.php";

if(isset($_GET['action'])){

if(	$_GET['action'] == "populate"){
$query = "SELECT distinct(`title``) as b FROM `product` WHERE 1";
$queryResult = $conn->query($query);
if($queryResult->num_rows > 0){
	$r = array();
	while($row = $queryResult->fetch_array(MYSQLI_ASSOC)){
		$r[] =  $row['b'];
		}
		echo json_encode($r);
		$conn->close();
	}
}

if(	$_GET['action'] == "showProduct"){
	//echo json_encode($_GET['batch']);
	$productQuery = "select * from product where title='".$_GET['title']."'";
	$productQueryResult = $conn->query($productQuery);
	if($productQueryResult->num_rows > 0){
		$r = array();
		while($row = $productQueryResult->fetch_array(MYSQLI_ASSOC)){
		$r[] = $row;	
			}
		echo json_encode($r);	
		}
	//else echo json_encode(["no data found"]);	
	
	}
	
}