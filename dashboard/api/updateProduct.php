<?php
require 'db_config.php';


  $id  = $_POST["id"];
  $post = $_POST;

  $sql = "UPDATE `product` SET `title`='".$post['title']."',`description`='".$post['description']."',`user_id`='".$post['user_id']."',`areaid`='".$post['areaid']."',`categoryid`='".$post['categoryid']."',`subcategoryid`='".$post['subcategoryid']."' WHERE id = '".$id."'";

  $result = $con->query($sql);


  $sql = "SELECT * FROM product WHERE id = '".$id."'"; 

  $result = $con->query($sql);

  $data = $result->fetch_assoc();


echo json_encode($data);

?>