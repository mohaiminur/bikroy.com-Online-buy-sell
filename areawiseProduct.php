
<!DOCTYPE html>
<html lang="en">

<head>
   <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Itemsasdasd</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link href="pagination/css/pagination.css" rel="stylesheet" type="text/css" />
    <link href="pagination/css/A_green.css" rel="stylesheet" type="text/css" />
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
?> 
    
    

    <?php
	  		if(isset($_GET["subareaid"])) {
			$subareaid = $_GET["subareaid"];
			
	?>
    	    
<?php 
		include ("include/search.php");
 ?>
      
    <br>
    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h4>All Catagories</h4>
                    <ul>
                        <?php 
							getCats();
	?>
    </ul>				
                      
                   <ul>     
                        <?php	
							
							
							echo "<h4>All of Bangladesh</h4>";
							getArea();
                        ?>
                        
                    </ul>

  
                </div>
                
                <?php
     include("pagination/function.php");
 $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
    	$limit = 5; //if you want to dispaly 10 records per page then you have to change here
    	$startpoint = ($page * $limit) - $limit;
        $statement ="product where subareaid='".$subareaid."'"; //you have to pass your query over here
		$res=mysqli_query($con,"select * from product where subareaid='".$subareaid."' LIMIT {$startpoint},{$limit}") or die("eRROR");
		
		   echo "<div class='col-md-7'>";		
			while($row=mysqli_fetch_array($res)){
				echo "<div class='media' style=' background-color: #99CCCC;
    border: 3px solid #009999;
    padding: 10px;'>";
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
	  include ("include/rightbar.php");
	?>
    
     <?php
echo "<div id='pagingg' class='text-center' >";
echo pagination($con,$statement,$limit,$page,$url='areawiseProduct.php?subareaid='.$subareaid.'&');
echo "</div>";
?>
            </div>
        </div>
    </section>  
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
