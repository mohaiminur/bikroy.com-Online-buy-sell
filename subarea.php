
<!DOCTYPE html>
<html lang="en">

<head>
   <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ads in area</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- custom css -->
    <link rel="stylesheet" type="text/css" href="css/style.css">



</head>

<body>

<?php 
        include ("function/function.php");
		include ("include/header.php");
		include ("function/area.php");
		include ("include/bannar.php");
		include ("include/search.php");
	?>
    <br>
    <div class="container">
    <?php
	include ("include/sidebar.php");
	?>
    <div class="col-md-7 text-center">
    <?php
	
		if(isset($_GET["id"])) {
			$subarea_id = $_GET["id"];
			$select = "select * from subarea where areaid='".$subarea_id."'";
			$run_subarea=$con->query($select);
			while($row=$run_subarea->fetch_array()){
			 	echo "<div class='media' style=' background-color: #99CCCC;
    border: 3px solid #009999;
    padding: 10px;'>
				<h2>".$row['subareaname']."</h2>
				<a href='areawiseProduct.php?subareaid=".$row['id']."'><button class='btn btn-primary'>Show Product</button></a>
				</div>";
				
			}
			
		}
	
	?>
   </div>
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
