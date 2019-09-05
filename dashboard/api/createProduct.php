<?php
require 'db_config.php';

  $post = $_POST;
  
	$sql = "INSERT INTO `product`(`id`, `title`, `description`, `user_id`, `areaid`, `categoryid`, `subcategoryid`) VALUES (null,'".$post['title']."','".$post['description']."','".$post['user_id']."','".$post['areaid']."','".$post['categoryid']."','".$post['subcategoryid']."')";

  $result = $con->query($sql);


  $sql = "SELECT * FROM product Order by id desc LIMIT 1"; 

  $result = $con->query($sql);

  $data = $result->fetch_assoc();


//echo json_encode($data);
header ('Location ../index.php');
?>