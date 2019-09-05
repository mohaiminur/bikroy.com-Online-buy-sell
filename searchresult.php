<!DOCTYPE html>
<html lang="en">

<head>
   <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Item</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- custom css -->
    <link rel="stylesheet" type="text/css" href="css/style.css">



</head>

<body>

<?php 
		include ("function/area.php");
		include ("include/header.php");
        include ("include/bannar.php");
		include ("function/connection.php");
		include ("function/function.php");
		include ("include/search.php");
 ?>
 <br>
<div class="container">
<?php
include ("include/sidebar.php");
?>	
<?php
if(isset($_POST['submit'])){
$name = $_POST['name'];
if(empty($name)){
	$make = '<h4>You must type a word to search!</h4>';
}else{
	
	$sele = "SELECT * FROM product WHERE title LIKE '%$name%'";
	$result = $con->query($sele);
	
	if($make = $result->num_rows > 0){
		echo "<div class='col-md-7 madd'>";
		while($row =$result->fetch_array(MYSQLI_ASSOC)){
		echo "<div class='media' style=' background-color: #99CCCC; border: 3px solid #009999; padding: 10px;'>";
				echo "<div class='media-left'>
				<img class='media-object' src=images/".$row['image'].">
				</div>";
			 	echo "<div class='media-body'>
				<h2>".$row['title']."</h2>
				<p>".$row['description']."</p>
				<h4>".$row['price']."</h4>
				<a href='itemDetails.php?details=".$row['id']."'><button class='btn btn-primary'>Details</button></a>
				</div>";
				echo "</div>";
				
			}
			
			echo "</div>";
		}
else{
	echo "<div class='col-md-7 madd'>";
echo '<h4>No match found!</h4>';
echo "</div>";
}

}
}

?>
<?php 
		include ("include/rightbar.php");
	?>
</div>
	<?php 
		include ("include/footer.php");
	?>
    
    <!--/Footer-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed By Imran-->
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
