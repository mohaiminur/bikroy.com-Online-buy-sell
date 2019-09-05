<?php 
        //start user session
        session_start();
        if (!(isset($_SESSION['username']))) {
            header("location: login.php");
        }
?>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>allads</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- custom css -->
    <link href="css/bootstrap-imageupload.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/bootstrap-imageupload.min.js"></script>
    <script src="js/main.js"></script>
    <style>
    .imageupload {
                margin: 20px 0;
            }
    </style>


</head>

<body>
     <?php 
	    require("function/functions.php");
	    include ("function/connection.php");
	    include ("function/area.php");
        include ("function/function.php");
     ?>
     
     

 <header id="header">
        <div class="container">
            <div class="row">
                <div class="col-md-2"><a class="navbar-brand" href="index.php">Bikroy.com</a></div>
                <div class="col-md-3 pdt"><a href="allads.php"><button class="btn btn-info " type="submit">all ads</button></a> <button class="btn btn-info" type="submit">Bangla</button></div>
                <div class="col-md-4 pdt pull-right text-right">
                 <?php if (isset($_SESSION['username'])) { ?>
				<h5 class="navbar-text">Signed in as <?php echo $_SESSION['username']; ?></h5>
				<a  href="logout.php"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Log Out</a>
				<?php } else { ?>
                <a class="kamal" href="login.php"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Log In</a>
				<?php } ?>
                <a href="adspost.php"> <button class="btn btn-warning sadi" type="submit">Post Your Ads </button></a>
                
                </div>
          </div>
        </div>
    </header>
    
     
    <?php 				
		include ("include/bannar.php");
		include ("include/search.php");
        
		?>
        <div class="container">
        <?php
        include ("include/sidebar.php");
	?>
    <br>
  <div class="col-md-9">    
    <h3 class="text-center">Post Your ad</h3>
    <form id="adpost" action="#" method="post" enctype="multipart/form-data" class="form-group">
        <p>
            <!--Hidden input for user id-->
             <input class="form-control" value="<?php echo $_SESSION['id']; ?>" type="hidden" name="uid" id="uid">
        </p>
        <p>
            <label for="">Area :</label>
            <select class="form-control"  name="area" id="area" >
               <option value="-1">Select one</option> 
                <?php 
									//call function divisions() to get data from division table
									echo area() ;
								?>
            </select>
        </p>
        <p>
            <label for="">Subarea :</label>
            <select class="form-control"  name="subarea" id="subarea" >
          
            </select>
        </p>
        <p>
            <label for="">Category :</label>
            <select class="form-control"  name="category" id="category" >
               <option value="-1">Select one</option>
              <?php 
									//call function divisions() to get data from division table
									echo category() ;
								?>
            </select>
        </p>
        <p>
            <label for="">subcategory :</label>
            <select class="form-control"  name="subcategory" id="subcategory" >
               <option value="-1">Select one</option>
              <?php 
                                	$select_scat = "SELECT * FROM subcategory";
									$select_scat_query = $con->query($select_scat);
									while($rows = $select_scat_query->fetch_array()) {
                                 ?>
                                 	<option value="<?php echo $rows["id"]; ?>"><?php echo $rows["subcategoryname"]; ?></option>
                                 <?php } ?>
            </select>
        </p>
        <p>
            <label for="">Ptoduct Title :</label>
            <input class="form-control"  type="text" name="title" id="title">
        </p>
        <p>
            <label for="">Ptoduct Description :</label>
            <textarea class="form-control" name="description" id="description"></textarea>
        </p>
        <p>
        <label for="">Types of ads :</label>
        <input type="radio" value="For Sale" name="type" id="type"> For Sale |
        <input type="radio" value="Want to Buy" name="type" id="type"> Want to Buy
        </p>
        <p>
        <label for="">Condition:</label>
        <input type="radio" value="New" name="condition" id="condition"> New |
        <input type="radio" value="Used" name="condition" id="condition"> Used
        </p>
        <p>
            <label for="">Price :</label>
            <input class="form-control" type="text" name="price" id="price">
        </p>
         <label for="">Image :</label>
            <!-- bootstrap-imageupload. -->
            <div class="imageupload panel panel-default">
                <div class="panel-heading clearfix">
                    <h3 class="panel-title pull-left">Upload Image</h3>
                </div>
                <div class="file-tab panel-body">
                    <label class="btn btn-default btn-file">
                        <span>Browse</span>
                        <!-- The file is stored here. -->
                        <input type="file" name="image-file">
                    </label>
                    <button type="button" class="btn btn-default">Remove</button>
                </div>
                <div class="url-tab panel-body">
                    <div class="input-group">
                        <input type="text" class="form-control hasclear" placeholder="Image URL">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-default">Submit</button>
                        </div>
                    </div>
                    <button type="button" class="btn btn-default">Remove</button>
                    <!-- The URL is stored here. -->
                    <input type="hidden" name="image-url">
                </div>
            </div>
     
            <input class="btn btn-primary" type="submit" value="submit" name="submit">
    </form>
    </div>
   </div>
        <script src="js/jquery.min.js "></script>
        <script src="js/bootstrap.min.js "></script>
        <script src="js/bootstrap-imageupload.min.js"></script>


        <script>
            var $imageupload = $('.imageupload');
            $imageupload.imageupload();

        </script>
    
    <?php
   if(isset($_POST['submit'])){
	   $db =$con;
	   $userid =$_POST['uid'];
	   $areaid =$_POST['area'];
	   $subareaid =$_POST['subarea'];
	   $categoryid =$_POST['category'];
	   $subcategoryid =$_POST['subcategory'];
	   $title =$_POST['title'];
	   $description=$_POST['description'];
	   $type =$_POST['type'];
	   $condition =$_POST['condition'];
	   $price =$_POST['price'];
	   $image = $_FILES['image-file']['name'];
        move_uploaded_file(
        $_FILES['image-file']['tmp_name'],"images/".$_FILES['image-file']['name']);

	   $insertdata = "INSERT INTO `buynsell`.`product` (`id`, `user_id`, `title`, `description`, `price`, `image`, `areaid`, `subareaid`, `categoryid`, `subcategoryid`, `adtype`, `condition`, `expiredate`) VALUES ('', '$userid', '$title', ' $description', '$price', '$image', '$areaid', ' $subareaid', '$categoryid', '$subcategoryid', '$type', '$condition',  '')";
	 $result = $db->query($insertdata);
	 if($result){echo "Data Added!!";}
	 else echo "Error!!!";
	 $db->close();  
	   }
   
	?>
   
      
          
    
<?php 
		include ("include/footer.php");
	?>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js "></script>
    <!-- Include all compiled plugins (below), or include individual files as needed By Imran-->
        <script>
		//start jQuery
		$(document).ready(function() {
			//disable district & area selectbox
			$("#subarea").attr("disabled","disabled");
				
		 	//change or populate value in district when select divisions value
		  	$("#area").change(function(){ 
		  		//get value from division select box & put in a variable
				var area = $(this).val();
				//if division value not -1 then show subarea
				if(area != "-1") {
					$("#subarea").removeAttr("disabled");
				
					//call php file using post() method
					$.post("function/functions.php", {action:"populateSubarea", areaID:area}, 
					function(subareaData){ 
						$("#subarea").html(subareaData);
						
						/*var divisionName = "<h3>"+$("option:selected").html()+"</h3>";
						$("#output").html(divisionName + districtData);*/
					});//end post() method for district populating in selectbox
					
					
				}//end if(-1)
				else {
					$("#subarea").attr("disabled","disabled");
					$("#subarea").val("-1");
				}
		  	
			});//end change() function for division selectbox


//----for Category-----//
$("#subcategory").attr("disabled","disabled");
$("#category").change(function(){ 
		  		//get value from division select box & put in a variable
				var category = $(this).val();
				//if division value not -1 then show subarea
				if(category != "-1") {
					$("#subcategory").removeAttr("disabled");
				
					//call php file using post() method
					$.post("function/functions.php", {action:"populateSubcategory", categoryID:category}, 
					function(subcategoryData){ 
						$("#subcategory").html(subcategoryData);
						
						/*var divisionName = "<h3>"+$("option:selected").html()+"</h3>";
						$("#output").html(divisionName + districtData);*/
					});//end post() method for district populating in selectbox
					
					
				}//end if(-1)
				else {
					$("#subcategory").attr("disabled","disabled");
					$("#subcategory").val("-1");
				}
		  	
			});
		
		});//end jQuery
		
		
    </script>
    
</body>

</html>
