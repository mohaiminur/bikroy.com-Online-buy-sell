<?php
session_start();


if(isset($_POST['login'])){
    require "../function/connection.php";
	
	$uname = $_POST['uname'];
	$upass = $_POST['upass'];
	
	$select_query = "select * from admin where username = '$uname' and password = '$upass'";
	$result = $con->query($select_query);
	$row = $result->fetch_array();

	if ($row['username']==NULL)
    {
     echo "<p>Username / Password combination does not exist</p>";
     
    }else{
        // session variable define for user.....

		$_SESSION['username']=$row['username'];
		$_SESSION['password']=$row['password'];
		
		header("location:../dashboard/index.php");}
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   
    <meta charset="utf-8">
    <title>BUY AND SELL</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link href="../dashboard/css/bootstrap-cerulean.min.css" rel="stylesheet">

    <link href="../dashboard/css/charisma-app.css" rel="stylesheet">
    <link href='../dashboard/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='../dashboard/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='../dashboard/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='../dashboard/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='../dashboard/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='../dashboard/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='../dashboard/css/jquery.noty.css' rel='stylesheet'>
    <link href='../dashboard/css/noty_theme_default.css' rel='stylesheet'>
    <link href='../dashboard/css/elfinder.min.css' rel='stylesheet'>
    <link href='../dashboard/css/elfinder.theme.css' rel='stylesheet'>
    <link href='../dashboard/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='../dashboard/css/uploadify.css' rel='stylesheet'>
    <link href='../dashboard/css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="../dashboard/bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="../dashboard/img/favicon.ico">

</head>

<body>
<div class="ch-container">
    <div class="row">
        
    <div class="row">
        <div class="col-md-12 center login-header">
            <h2>Welcome to Bikroy.com</h2>
        </div>
        <!--/span-->
    </div><!--/row-->

    <div class="row">
        <div class="well col-md-5 center login-box">
            <div class="alert alert-info">
                Please login with your Username and Password.
            </div>
            <form class="form-horizontal" method="post">
                <fieldset>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
                        <input type="text" class="form-control" placeholder="Username" name="uname">
                    </div>
                    <div class="clearfix"></div><br>

                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                        <input type="password" class="form-control" placeholder="Password" name="upass">
                    </div>
                    <div class="clearfix"></div>

                    <div class="input-prepend">
                        <label class="remember" for="remember"><input type="checkbox" id="remember"> Remember me</label>
                    </div>
                    <div class="clearfix"></div>

                    <p class="center col-md-5">
                        <button type="submit" class="btn btn-primary" name="login">Login</button>
                    </p>
                </fieldset>
            </form>
        </div>
        <!--/span-->
    </div><!--/row-->
</div><!--/fluid-row-->

</div><!--/.fluid-container-->

<!-- external javascript -->

<script src="../dashboard/usmanhalalit-charisma-bf07c0e/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='../dashboard/usmanhalalit-charisma-bf07c0e/bower_components/moment/min/moment.min.js'></script>
<script src='../dashboard/usmanhalalit-charisma-bf07c0e/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='../dashboard/usmanhalalit-charisma-bf07c0e/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="../dashboard/usmanhalalit-charisma-bf07c0e/js/charisma.js"></script>


</body>
</html>
