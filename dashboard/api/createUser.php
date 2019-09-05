<?php
require 'db_config.php';

  $post = $_POST;

  $sql = "INSERT INTO `users`(`id`, `name`, `username`, `email`, `password`, `phone` `usertype`) VALUES (null,'".$post['name']."','".$post['username']."','".$post['email']."','".$post['password']."','".$post['phone']."','".$post['usertype']."')";

  $result = $con->query($sql);


  $sql = "SELECT * FROM users Order by id desc LIMIT 1"; 

  $result = $con->query($sql);

  $data = $result->fetch_assoc();


//echo json_encode($data);
header ('Location ../index.php');
?>

