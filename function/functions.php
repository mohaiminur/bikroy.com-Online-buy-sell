<?php

	//Mysql and Database connection
	require("connection.php");
	
	
	
	/**
		//Called Division Table[division] from Database[bangladesh]
	**/
	function area() {
		//convert $mysql variable to global variable from config.php
		global $con;
		
		//create select query for area table
		$create_query = "SELECT * FROM area ORDER BY areaname ASC";
		//send query to database table
		$send_query = $con->query($create_query);
		//create null variable for while loop
		$option = "";
		//fetch data from division table and loop all data in select box using while loop
		while($area = $send_query->fetch_array()) {
			$option .= "<option value='".$area["id"]."'>".$area["areaname"]."</option>";
		}
		//return $option variable to get all data from while loop
		return $option;
	}
	
	
	/**
		//Called and Populate subarea Table[subarea] from Database[bangladesh]
	**/
	function populateSubarea() {
		global $con;
		
		if( isset($_POST["action"]) && $_POST["action"]=="populateSubarea" ) {
			//get post data [divisionID] and put in a variable
			$areaID = $_POST["areaID"];
				//create select query for subarea table where relational column from area table
				$create_query = "SELECT * FROM subarea WHERE areaid='".$areaID."' ORDER BY subareaname ASC";
				//send query to database table
				$send_query = $con->query($create_query);	
				//create null variable for while loop
				$option = "<option value='-1' class='rd-first'>Select subarea</option>";
				//fetch data from subarea table and loop all data in select box using while loop [correspondent of division table]
				while($subarea = $send_query->fetch_array()) {
				$option .= "<option value='".$subarea["id"]."'>".$subarea["subareaname"]."</option>";
				}
				//return $option variable to get all data from while loop
				return $option;
		}
	}
	//call function
	echo populateSubarea();
	
	
	
	
	function category() {
		//convert $mysql variable to global variable from config.php
		global $con;
		
		//create select query for category table
		$create_query = "SELECT * FROM category ORDER BY categoryname ASC";
		//send query to database table
		$send_query = $con->query($create_query);
		//create null variable for while loop
		$option = "";
		//fetch data from division table and loop all data in select box using while loop
		while($category = $send_query->fetch_array()) {
			$option .= "<option value='".$category["id"]."'>".$category["categoryname"]."</option>";
		}
		//return $option variable to get all data from while loop
		return $option;
	}
	
	function populateSubcategory() {
		global $con;
		
		if( isset($_POST["action"]) && $_POST["action"]=="populateSubcategory" ) {
			//get post data [divisionID] and put in a variable
			$categoryID = $_POST["categoryID"];
				//create select query for subarea table where relational column from area table
				$create_query = "SELECT * FROM subcategory WHERE categoryid='".$categoryID."' ORDER BY subcategoryname ASC";
				//send query to database table
				$send_query = $con->query($create_query);	
				//create null variable for while loop
				$option = "<option value='-1' class='rd-first'>Select subcategory</option>";
				//fetch data from subarea table and loop all data in select box using while loop [correspondent of division table]
				while($subcategory = $send_query->fetch_array()) {
				$option .= "<option value='".$subcategory["id"]."'>".$subcategory["subcategoryname"]."</option>";
				}
				//return $option variable to get all data from while loop
				return $option;
		}
	}
	//call function
	echo populateSubcategory();
	
		
?>