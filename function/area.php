<?php
require("connection.php");

function getArea(){
	global $con;
	$get_area="select * from area";
	$quary=$con->query($get_area);
		while($row=$quary->fetch_array(MYSQLI_ASSOC)){
			$area_id=$row['id'];
			$area_name=$row['areaname'];
			echo "<li><a href='subarea.php?id=".$area_id."'> $area_name </a><li>";
			}
	}


?>
