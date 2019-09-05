<?php
require 'db_config.php';


  $id  = $_POST["id"];
  $post = $_POST;

  $sql = "UPDATE `users` SET `name`='".$post['name']."',`username`='".$post['username']."',`email`='".$post['email']."',`password`='".$post['password']."', `phone`='".$post['phone']."',`usertype`='".$post['usertype']."' WHERE id = '".$id."'";

  $result = $con->query($sql);


  $sql = "SELECT * FROM users WHERE id = '".$id."'"; 

  $result = $con->query($sql);

  $data = $result->fetch_assoc();


echo json_encode($data);

?>