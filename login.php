<?php /*?><?php
session_start();
require "function/connection.php";
if(isset($_POST['singin'])){
	$username = filter_var($_POST['user_name'], FILTER_SANITIZE_STRING);
	$password = filter_var($_POST['user_pass'], FILTER_SANITIZE_STRING);	
	//$password = sha1($password);
	$selectQuery = "select * from users where username = '$username' and password = '$password'";
	$result = $con->query($selectQuery);
	//$row = $result->fetch_array();
	//echo $row['firstname'];
	//echo '<br>';
	//echo $row['password'];

	$recordsFound = $result->num_rows;
	if($recordsFound == 1){
		$row = $result->fetch_array();
		$_SESSION['usersloggin'] = true;
		$_SESSION['usersname']=$row['username'];
		$_SESSION['usersid']=$row['id'];
		header("location: adspost.php");
		
		}	 
	else {
		$_SESSION['usersloggin'] = false;
		}	
	

	}
?><?php */?>
<?php
//session_start();


if(isset($_POST['singin'])){
    require "function/connection.php";
	
	$uname = $_POST['user_name'];
	$upass = $_POST['user_pass'];
	
	$select_query = "select * from users where username = '$uname' and password = '$upass'";
	$result = $con->query($select_query);
	$row = $result->fetch_array();

	if ($row['username']==NULL)
    {
     echo "<p>Username / Password combination does not exist</p>";
     
    }else{
        // session variable define for user.....
session_start();
		$_SESSION['username']=$row['username'];
		$_SESSION['id']=$row['id'];
		
		header("location:adspost.php");}
}
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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Post your add</title>
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/slicknav.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="responsive.css">
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <!-- custom css -->
        <link rel="stylesheet" type="text/css" href="css/style.css">

    </head>

    <body>
        <?php
          include ("include/header.php");
?>

            <div class="container user_log">
                <div class="row basic_user_log_area">
                    <h3>Please Log in </h3>
                    <div class="col-md-5 social_login">
                        <div class="contact-link">
                            <ul>
                                <li>
                                    <a href="https://www.facebook.com/"><img src="images/images.png" width="25" height="25"> Login with Facebook</a>
                                </li>
                                <br>
                                <li>
                                    <a href="http://twitter.com/"><img src="images/twt1.png" width="25" height="25"> Login with Twitter</a>
                                </li>
                                <br>
                                <li>
                                    <a href="http://plus.google.com/"><img src="images/gp1.png" width="25" height="24"> Login with Google plus</a>
                                </li>
                                <br>
                                <li>
                                    <a href="mailto:amadercode@gmail.com"><img src="images/gm.png" width="25" height="21"> Login with Gmail</a>
                                </li>
                                <br>
                                <li> <a href="usersingup.php">If You New User please clicK here to Sign Up?</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-7 signup">
                        <form method="POST" action="" name="signup">
                            <p>
                                <Lable>User Name or Email :</Lable>
                                <input type="text" name="user_name" id="user_name" class="form-control" required>
                            </p>
                            <p>
                                <Lable>Password :</Lable>

                                <input type="password" name="user_pass" id="user_pass" class="form-control" required>
                            </p>
                            <input type="submit" value="Login" name="singin" id="singin" class="btn-success btn-lg"> <a href="forgetpassword.php">Forget Password</a>

                        </form>

                    </div>
                </div>

            </div>
            <?php
        include ("include/footer.php");
        
       ?>
                <script src="js/vendor/jquery-1.10.2.min.js"></script>
                <script>
                    window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')

                </script>
                <script src="js/bootstrap.min.js"></script>
                <script src="js/plugins.js"></script>
                <script src="js/main.js"></script>
                <script src="js/owl.carousel.min.js"></script>


    </body>

    </html>
