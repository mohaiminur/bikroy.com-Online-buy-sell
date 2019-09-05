<?php
require("connection.php");

function getCats(){
	global $con;
	$get_cats="select * from category";
	$select=$con->query($get_cats);
		while($row=$select->fetch_array(MYSQLI_ASSOC)){
			$cat_id=$row['id'];
			$cat_tittle=$row['categoryname'];
			echo "<li><a href='catWiseItems.php?id=".$cat_id."'> $cat_tittle </a><li>";
			}
	}


?>
