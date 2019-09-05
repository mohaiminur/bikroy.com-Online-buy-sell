<?php
require 'db_config.php';

  $post = $_POST;

  $sql = "INSERT INTO area (areaname) 

	VALUES ('".$post['areaname']."')";


  $result = $con->query($sql);


  $sql = "SELECT * FROM area Order by id desc LIMIT 1"; 

  $result = $con->query($sql);

  $data = $result->fetch_assoc();


//echo json_encode($data);
header ('Location ../index.php');
?>