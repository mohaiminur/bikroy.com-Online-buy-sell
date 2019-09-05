<?php
require "function/connection.php";

?>
    <!DOCTYPE html>
    <!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
    <!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
    <!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
    <!--[if gt IE 8]><!-->
    <html class="no-js">
    <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Bikroy|signup</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/slicknav.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="responsive.css">
        <link rel="shortcut icon" type="image/png" href="images/favicon.png" />
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>

    </head>

    <body>
        <?php
        include ("include/header.php");
    ?>

            <div class="container user_log">
                <div class="row basic_user_log_area">
                    <h3 class="text-center"> User Registration</h3>
                    <div class="col-md-5 social_login">
                        <div class="contact-link">
                            <ul>
                                <li class="bg-info">
                                    <a href="https://www.facebook.com/idb.azimul/"><img src="images/images.png" width="25" height="25"> Login with Facebook</a>
                                </li>
                                <br>
                                <li class="bg-info">
                                    <a href="http://twitter.com/idb.azimul/"><img src="images/twt1.png" width="25" height="25"> Login with Twitter</a>
                                </li>
                                <br>
                                <li class="bg-info">
                                    <a href="http://plus.google.com/idb.azimul/"><img src="images/gp1.png" width="25" height="24"> Login with Google plus</a>
                                </li>
                                <br>
                                <li class="bg-info">
                                    <a href="mailto:amadercode@gmail.com"><img src="images/gm.png" width="25" height="21"> Login with Gmail</a>
                                </li>
                                <br>
                                <li><a href="login.php"> If you are Existing User clic here to Login</a></li>
                                <br>
                                <li><a href="adspost.php">If you are Existing User clic here to add Post</a></li>
                            </ul>

                        </div>
                    </div>

                    <div class="col-md-7 signup">
                        <form method="POST" action="#" name="signup" id="signup" class="form-group">

                            <p>
                                <label>Name :</label>
                                <input type="text" name="uname" id="uname" class="form-control" placeholder="Enter Your Full Name" required>
                            </p>
                            <p>
                                <label>User Name :</label>
                                <input type="text" name="user_name" id="user_name" class="form-control" placeholder="Enter Your User Name" required>
                            </p>
                            <p>
                                <label>Email :</label>
                                <input type="email" name="user_email" id="user_email" class="form-control" placeholder="Enter Your Email Address" required>
                            </p>
                            <p>
                                <label>Password :</label>
                                <input type="password" name="user_pass" id="user_pass" class="form-control" placeholder="Enter Your Password" required>
                            </p>
                            <p>
                                <label>Phone :</label>
                                <input type="text" name="uphone" id="uphn" class="form-control" placeholder="Enter Your Phone Number" required>
                            </p>

                            <label>User Type:</label>
                            <input type="radio" name="user_type" id="user_type" value="Individual" required> Individual | <input type="radio" name="user_type" id="user_type" value="Business" required> Business or Enterprize
                            <input type="checkbox" id="agree" value="agreed" name="agree" />I agree to the Terms and Conditions of <a href="#">Bicroy.com</a><br>
                            <input type="reset" value="Refresh" name="refresh" id="refresh" class="btn-success btn-sm">
                            <input type="submit" value="Register" id="sub" name="sub" class="btn-success btn-sm">

                        </form>
                    </div>
                </div>
            </div>
            <?php
        include ("include/footer.php");
    ?>
    
    <?php
require "function/connection.php";
if(isset($_POST['sub'])){
	$db =$con;
	$fullname = $_POST['uname'];
	$username = $_POST['user_name'];
	$useremail = $_POST['user_email'];
	$Upass = $_POST['user_pass'];
	$uphone = $_POST['uphone'];
	$Usertype = $_POST['user_type'];
	$currentDate = date("Y-m-d h:i:s");
	$useragreement = $_POST['agree'];
	
	if($fullname=="" || $username=="" || $useremail=="" || $Upass=="" || $uphone=="" || $Usertype=="" || $useragreement==""){
		header("location: usersingup.php");
		exit;
		}
	$insertQuery = "INSERT INTO `buynsell`.`users` VALUES ('','$fullname','$username','$useremail','$Upass','$uphone', '$Usertype','$currentDate', '', '')";
	$result = $db->query($insertQuery);
	 if($result){echo "Data Added!!";}
	 else echo "Error!!!";
	 $result->free();
	 $db->close();
}
?>

              
    </body>

    </html>
