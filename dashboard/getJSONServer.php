<?php
require ("../../funciton/connection.php");

if (isset($_GET['action'])){

if ($_GET['action']=="populate"){
$query= "SELECT * FROM category";
$queryResult=$con->query($query);
if ($queryResult->num_rows > 0) {
	$r=array();
	while ($row=$queryResult->fetch_array(MYSQLI_ASSOC)){
		$r[] = $row;
		} 
		echo json_encode($r);
		$con->close();
	}
}


if(	$_GET['action'] == "showSubcategory"){
	//echo json_encode($_GET['batch']);
	$studentQuery = "select * from subcategory where categoryid='".$_GET['category']."'";
	$studentQueryResult = $con->query($studentQuery);
	if($studentQueryResult->num_rows > 0){
		$r = array();
		while($row = $studentQueryResult->fetch_array(MYSQLI_ASSOC)){
		$r[] = $row;	
			}
		echo json_encode($r);	
		}
	
	}

}
?>

 

