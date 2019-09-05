<div class="container sbar">
    <div class="row">
        <div class="col-md-3"><button type="button" class="btn btn-info form-control"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> <select style="color:#000; width:80%">
               <option value="-1">Select City</option> 
                <?php 
                                	$select_area = "SELECT * FROM area ";
									$select_area_query = $con->query($select_area);
									while($rows = $select_area_query->fetch_array()) {
                                 ?>
                                 	<option value="<?php echo $rows["id"]; ?>"><?php echo $rows["areaname"]; ?></option>
                                 <?php } ?>
            </select></button></div>
        <div class="col-md-3"><button type="button" class="btn btn-info form-control"><span class=" glyphicon glyphicon-tags" aria-hidden="true"></span> <select style="color:#000; width:80%">
               <option value="-1"> Select Category</option>
               <?php 
                                	$select_cat = "SELECT * FROM category ";
									$select_cat_query = $con->query($select_cat);
									while($rows = $select_cat_query->fetch_array()) {
                                 ?>
                                 	<option value="<?php echo $rows["id"]; ?>"><?php echo $rows["categoryname"]; ?></option>
                                 <?php } ?>
            </select></button></div>
        <div class="col-md-6">
            <form class="input-group" id="adv-search" action="searchresult.php" method="POST">
                <input type="text" class="form-control" name="name"placeholder="Search for Products" required >
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <button type="submit" name="submit" class="btn btn-info"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Search</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
