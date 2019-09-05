 <?php session_start(); ?>

 <header id="header">
        <div class="container">
            <div class="row">
                <div class="col-md-2"><a class="navbar-brand" href="index.php">Bikroy.com</a></div>
                <div class="col-md-3 pdt"><a href="catWiseItems.php?id=1"><button class="btn btn-info " type="submit">all ads</button></a> <button class="btn btn-info" type="submit">Bangla</button></div>
                <div class="col-md-7 pdt pull-right text-right">
                 <?php if (isset($_SESSION['username'])) { ?>
				<h5 class="navbar-text">Signed in as <?php echo $_SESSION['username']; ?></h5>
				<a  class="kamal" href="logout.php"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Log Out</a>
				<?php } else { ?>
                <a class="kamal" href="login.php"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Log In</a>
				<?php } ?>    
                <a href="adspost.php"> <button class="btn btn-warning sadi" type="submit">Post Your Ads </button></a>
               </div> 
               
          </div>
        </div>
    </header>
    