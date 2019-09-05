<?php
require "db_config.php";


//need to change for another table
$query = "select * from  product order by id asc";
$res = $con->query($query);
$count = $res->num_rows;
$page = (int) (!isset($_REQUEST['pageId']) ? 1 :$_REQUEST['pageId']);
$page = ($page == 0 ? 1 : $page);

/* how many records you want to load per page, set the value in recordsPerPage variable  */
$recordsPerPage =10;
$start = ($page-1) * $recordsPerPage;
$adjacents = "2";

$prev = $page - 1;
$next = $page + 1;
$lastpage = ceil($count/$recordsPerPage);
$lpm1 = $lastpage - 1;  
$pagination = "";
if($lastpage > 1)
    {   
        $pagination .= "<span id='pagenumber'>$page</span><div class='pagination'>";
        if ($page > 1)
            $pagination.= "<a href=\"#Page=".($prev)."\" onClick='changePagination(".($prev).");'>&laquo; Previous&nbsp;&nbsp;</a>";
        else
            $pagination.= "<span class='disabled'>&laquo; Previous&nbsp;&nbsp;</span>";   
        if ($lastpage < 7 + ($adjacents * 2))
        {   
            for ($counter = 1; $counter <= $lastpage; $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<span class='current'>$counter</span>";
                else
                    $pagination.= "<a href=\"#Page=".($counter)."\" onClick='changePagination(".($counter).");'>$counter</a>";     

            }
        }   

        elseif($lastpage > 5 + ($adjacents * 2))
        {
            if($page < 1 + ($adjacents * 2))
            {
                for($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
                {
                    if($counter == $page)
                        $pagination.= "<span class='current'>$counter</span>";
                    else
                        $pagination.= "<a href=\"#Page=".($counter)."\" onClick='changePagination(".($counter).");'>$counter</a>";     
                }
                $pagination.= "...";
                $pagination.= "<a href=\"#Page=".($lpm1)."\" onClick='changePagination(".($lpm1).");'>$lpm1</a>";
                $pagination.= "<a href=\"#Page=".($lastpage)."\" onClick='changePagination(".($lastpage).");'>$lastpage</a>";   

           }
           elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
           {
               $pagination.= "<a href=\"#Page=\"1\"\" onClick='changePagination(1);'>1</a>";
               $pagination.= "<a href=\"#Page=\"2\"\" onClick='changePagination(2);'>2</a>";
               $pagination.= "...";
               for($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
               {
                   if($counter == $page)
                       $pagination.= "<span class='current'>$counter</span>";
                   else
                       $pagination.= "<a href=\"#Page=".($counter)."\" onClick='changePagination(".($counter).");'>$counter</a>";     
               }
               $pagination.= "..";
               $pagination.= "<a href=\"#Page=".($lpm1)."\" onClick='changePagination(".($lpm1).");'>$lpm1</a>";
               $pagination.= "<a href=\"#Page=".($lastpage)."\" onClick='changePagination(".($lastpage).");'>$lastpage</a>";   
           }
           else
           {
               $pagination.= "<a href=\"#Page=\"1\"\" onClick='changePagination(1);'>1</a>";
               $pagination.= "<a href=\"#Page=\"2\"\" onClick='changePagination(2);'>2</a>";
               $pagination.= "..";
               for($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
               {
                   if($counter == $page)
                        $pagination.= "<span class='current'>$counter</span>";
                   else
                        $pagination.= "<a href=\"#Page=".($counter)."\" onClick='changePagination(".($counter).");'>$counter</a>";     
               }
           }
        }
        if($page < $counter - 1)
            $pagination.= "<a href=\"#Page=".($next)."\" onClick='changePagination(".($next).");'>Next &raquo;</a>";
        else
            $pagination.= "<span class='disabled'>Next &raquo;</span>";

        $pagination.= "</div>";       
    }

if(isset($_POST['pageId']) && !empty($_POST['pageId']))
{
    $id=$_POST['pageId'];
}
else
{
    $id='0';
}

//need to change for another table
$query = "select * from  subcategory order by id asc limit ".$con->real_escape_string($start).",$recordsPerPage";

//echo $query;exit;
$res    =   $con->query($query);
$count  =   $res->num_rows;

$HTML='<table border="1" cellpadding="2px" cellspacing="2px" width="90%" align="center" class="table table-striped table-bordered bootstrap-datatable datatable responsive">
<thead>
<tr>
<th>ID</th>
<th>Subcategory Name</th>
<th>Category ID</th>
<th>Category Description</th>
<th>Create Date</th>
<th>Action</th>
</tr>
</thead>';
if($count > 0)
{
    while($row=$res->fetch_array())
    {
        $HTML .= '<tr><td><span id="editsubcatid">'.$row['id'].'</span></td>';
		$HTML .= '<td><span id="editsubcatname">'.$row['subcategoryname'].'</span></td>';
		$HTML .= '<td><span id="editcatid">'.$row['categoryid'].'</span></td>';
		$HTML .= '<td><span id="editsubcatdes">'.$row['description'].'</span></td>';
		$HTML .= '<td><span id="editsubcatdate">'.$row['createdate'].'</span></td>';
		$HTML .= '<td><button style="padding:0;" class=" glyphicon glyphicon-edit icon-white btn btn-info editbtn" rid="'.$row['id'].'">&nbsp;Edit</button>
		<button style="padding:0;" class=" glyphicon glyphicon-trash icon-white btn btn-danger delbtn " rid="'.$row['id'].'">&nbsp;Delete</button></td>';
		$HTML .= '</tr>';
		
    }
$HTML .= '</table>';

}
else
{
    $HTML='No Data Found';
}
$con->close();
if($HTML == "No Data Found" ){
	echo $HTML;
	}
else {	
echo $HTML;
echo $pagination;
}
?>
<style>
div.pagination {
padding: 3px;
margin: 3px;
text-align:center;
}

div.pagination a {
padding: 2px 5px 2px 5px;
margin: 2px;
border: 1px solid #AAAADD;

text-decoration: none; /* no underline */
color: #000099;
}
div.pagination a:hover, div.digg a:active {
border: 1px solid #000099;

color: #000;
}
div.pagination span.current {
padding: 2px 5px 2px 5px;
margin: 2px;
border: 1px solid #000099;

font-weight: bold;
background-color: #000099;
color: #FFF;
}
div.pagination span.disabled {
padding: 2px 5px 2px 5px;
margin: 2px;
border: 1px solid #EEE;

color: #DDD;
}
#pagenumber{
	display:none;
	}    
</style>
