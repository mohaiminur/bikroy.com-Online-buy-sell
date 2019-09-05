<?php

 require 'db_config.php';

 $id  = $_POST["id"];

 $sql = "DELETE FROM category WHERE id = '".$id."'";

 $result = $con->query($sql);

 echo json_encode([$id]);
 
?>