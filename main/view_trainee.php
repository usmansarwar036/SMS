<html>
<head>
    
<title>
View Trainees
</title>

<?php 
require_once('auth.php');
?>
 <link href="css/bootstrap.css" rel="stylesheet">
 <link rel="stylesheet"  href="main/css/bootstrap.css?v=<?php echo time(); ?>">
    <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->

    <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
  
  <link rel="stylesheet" href="css/font-awesome.min.css">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
        width: 15%;
        height:100%;
      }
	  table td{

		  text-align: center !important;
		  padding: 10px 2px !important;
	  }
	  
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<!--sa poip up-->
<script src="jeffartagame.js" type="text/javascript" charset="utf-8"></script>
<script src="js/application.js" type="text/javascript" charset="utf-8"></script>
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'src/loading.gif',
      closeImage   : 'src/closelabel.png'
    })
  })
</script>
</head>
<?php
function createRandomPassword() {
	$chars = "003232303232023232023456789";
	srand((double)microtime()*1000000);
	$i = 0;
	$pass = '' ;
	while ($i <= 7) {

		$num = rand() % 33;

		$tmp = substr($chars, $num, 1);

		$pass = $pass . $tmp;

		$i++;

	}
	return $pass;
}
$finalcode='RS-'.createRandomPassword();
?>

<script>
function sum() {
            var txtFirstNumberValue = document.getElementById('txt1').value;
            var txtSecondNumberValue = document.getElementById('txt2').value;
            var result = parseInt(txtFirstNumberValue) - parseInt(txtSecondNumberValue);
            if (!isNaN(result)) {
                document.getElementById('txt3').value = result;
				
            }
			
			 var txtFirstNumberValue = document.getElementById('txt11').value;
            var result = parseInt(txtFirstNumberValue);
            if (!isNaN(result)) {
                document.getElementById('txt22').value = result;				
            }
			
			 var txtFirstNumberValue = document.getElementById('txt11').value;
            var txtSecondNumberValue = document.getElementById('txt33').value;
            var result = parseInt(txtFirstNumberValue) + parseInt(txtSecondNumberValue);
            if (!isNaN(result)) {
                document.getElementById('txt55').value = result;
				
            }
			
			 var txtFirstNumberValue = document.getElementById('txt4').value;
			 var result = parseInt(txtFirstNumberValue);
            if (!isNaN(result)) {
                document.getElementById('txt5').value = result;
				}
			
        }
</script>


 <script language="javascript" type="text/javascript">
/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */
// <!-- Begin
var timerID = null;
var timerRunning = false;
function stopclock (){
if(timerRunning)
clearTimeout(timerID);
timerRunning = false;
}
function showtime () {
var now = new Date();
var hours = now.getHours();
var minutes = now.getMinutes();
var seconds = now.getSeconds()
var timeValue = "" + ((hours >12) ? hours -12 :hours)
if (timeValue == "0") timeValue = 12;
timeValue += ((minutes < 10) ? ":0" : ":") + minutes
timeValue += ((seconds < 10) ? ":0" : ":") + seconds
timeValue += (hours >= 12) ? " P.M." : " A.M."
document.clock.face.value = timeValue;
timerID = setTimeout("showtime()",1000);
timerRunning = true;
}
function startclock() {
stopclock();
showtime();
}
window.onload=startclock;
// End -->
</SCRIPT>	

<body>
<?php include('navfixed.php');?>
<div class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
          <div class="well sidebar-nav">
              <ul class="nav nav-list">
                        <li><a href="index.php"><i class="icon-dashboard icon-2x"></i> Dashboard </a></li> 
                        <li ><a  href="students.php"><i class="icon-group icon-2x"></i>Enrollment</a></li>
                        <li><a href="Attendance.php"><i class="icon-user icon-2x"></i>Attendance</a></li>
                        <li><a href="fee.php"><i class="icon-user icon-2x"></i>Fee Portal</a></li>
                        <li><a href="course.php"><i class="icon-book icon-2x"></i>Courses</a></li>
                        <li><a href="expenses.php"><i class="icon-money icon-2x"></i>Expenses</a></li>
                        <li><a href="admin.php"><i class="icon-user icon-2x"></i>Admin</a></li>
                        <li><a href="employee.php"><i class="icon-user icon-2x"></i>Employees</a></li>
                        <li class='active'><a  href="trainee.php"><i class="icon-group icon-2x"></i>Trainee</a></li>
                        <li ><a  href="worker.php"><i class="icon-group icon-2x"></i>Worker</a></li> 				
				</ul>             
          </div><!--/.well -->
        </div><!--/span-->
	<div class="span10">
	<div class="contentheader">
			<i class="icon-table"></i> Trainee
			</div>
			<ul class="breadcrumb">
			<li><a href="index.php">Dashboard</a></li> /
			<li class="active">Trainee</li>
			</ul>


<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: left;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>

<?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM students WHERE id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<center><h4><i class="icon-edit icon-large"></i> Trainee Information</h4></center>
<hr>
<center><img src="../uploads/<?php echo $row['file'];?>" class="roundimage2"  alt=""/>
<br><br>

<table>
<tr>
<td> ID. : </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['sr']; ?></td>
</tr>
<tr>
<td> Reg. No. : </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['id']; ?></td>
</tr>
<tr>
<td> Name :  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['name']; ?> </td>
</tr>
<tr>
<td> CNIC:  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['cnic']; ?></td>
</tr>
<tr>
<td> D.O.B:  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['dob']; ?></td>
</tr>
<tr>
<td> Father Name:  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['f_name']; ?></td>
</tr>

<tr>

<tr>
<td> Skill:  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['old_class']; ?></td>
</tr>
<tr>

<td> Join Date:  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['adm_date']; ?></td>
</tr>
<tr>
<td> Left Date:  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['end_date']; ?></td>
</tr>
<tr>
<td> Phone:  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['cell']; ?></td>
</tr>
<tr>
<td> Reference :  </td>
<td style="padding: 10px;
				border-top: 1px solid #fafafa;
				background-color: #f4f4f4;
				text-align: center;
				color: #7d7d7d;"> <?php echo $row['refr']; ?></td>
</tr>


</table>
<br>
			
</center>

</div>
<?php
}
?>

<script src="js/jquery.js"></script>
  <script type="text/javascript">
$(function() {


$(".delbutton").click(function(){

//Save the link in a variable called element
var element = $(this);

//Find the id of the link that was clicked
var del_id = element.attr("id");

//Built a url to send
var info = 'id=' + del_id;
 if(confirm("Sure you want to delete this Student? There is NO undo!"))
		  {

 $.ajax({
   type: "GET",
   url: "deletestudent.php",
   data: info,
   success: function(){
   
   }
 });
         $(this).parents(".record").animate({ backgroundColor: "#fbc7c7" }, "fast")
		.animate({ opacity: "hide" }, "slow");

 }

return false;

});

});
</script>
</body>
<?php include('footer.php');?>

</html>