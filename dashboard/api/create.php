<?php
require 'db_config.php';

  $post = $_POST;

  $sql = "INSERT INTO category (categoryname,categorydescription) 

	VALUES ('".$post['categoryname']."','".$post['categorydescription']."')";


  $result = $con->query($sql);


  $sql = "SELECT * FROM category Order by id desc LIMIT 1"; 

  $result = $con->query($sql);

  $data = $result->fetch_assoc();


//echo json_encode($data);
header ('Location ../index.php');
?>