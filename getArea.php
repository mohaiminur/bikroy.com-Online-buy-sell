<?php
require "function/connection.php";

if(isset($_GET['action'])){

if(	$_GET['action'] == "populate"){
$query = "SELECT distinct(`areaname``) as c FROM `area` WHERE 1";
$queryResult = $conn->query($query);
if($queryResult->num_rows > 0){
	$r = array();
	while($row = $queryResult->fetch_array(MYSQLI_ASSOC)){
		$r[] =  $row['c'];
		}
		echo json_encode($r);
		$conn->close();
	}
}

if(	$_GET['action'] == "showArae"){
	//echo json_encode($_GET['batch']);
	$areaQuery = "select * from area where areaname='".$_GET['areaname']."'";
	$areaQueryResult = $conn->query($areaQuery);
	if($areaQueryResult->num_rows > 0){
		$r = array();
		while($row = $areaQueryResul->fetch_array(MYSQLI_ASSOC)){
		$r[] = $row;	
			}
		echo json_encode($r);	
		}
	//else echo json_encode(["no data found"]);	
	
	}
	
}