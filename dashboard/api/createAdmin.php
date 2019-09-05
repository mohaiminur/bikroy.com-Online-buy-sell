<?php
require 'db_config.php';

  $post = $_POST;
  
	$sql = "INSERT INTO `admin`(`id`, `firstname`, `lastname`, `username`, `email`, `password`, `group`) VALUES (null,'".$post['firstname']."','".$post['lastname']."','".$post['username']."','".$post['email']."','".$post['password']."','".$post['group']."')";

  $result = $con->query($sql);


  $sql = "SELECT * FROM admin Order by id desc LIMIT 1"; 

  $result = $con->query($sql);

  $data = $result->fetch_assoc();


//echo json_encode($data);
header ('Location ../index.php');
?>