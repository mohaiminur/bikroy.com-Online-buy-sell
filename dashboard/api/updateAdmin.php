<?php
require 'db_config.php';


  $id  = $_POST["id"];
  $post = $_POST;

  $sql = "UPDATE `admin` SET `firstname`='".$post['firstname']."',`lastname`='".$post['lastname']."',`username`='".$post['username']."',`email`='".$post['email']."',`password`='".$post['password']."',`group`='".$post['group']."' WHERE id = '".$id."'";

  $result = $con->query($sql);


  $sql = "SELECT * FROM admin WHERE id = '".$id."'"; 

  $result = $con->query($sql);

  $data = $result->fetch_assoc();


echo json_encode($data);

?>