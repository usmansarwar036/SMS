<!DOCTYPE html>
<html>

<head>
    
    <title>Course</title>
    <link rel="stylesheet" href="style.css">
<?php 
require_once('auth.php');
?>    
    
    //<?php
		
	//	$name = "";
	//	$connection = mysqli_connect("localhost","root","");
	//	$db = mysqli_select_db($connection,"model");
	//?>
</head>

<body>
<link href="css/bootstrap.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">

<link rel="stylesheet" href="css/font-awesome.min.css">
<style type="text/css">

  .sidebar-nav {
        padding: 9px 0;
        width: 15%;
        height:100%;
      }
  form{
    margin:0 !important;
  }


</style>
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
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
<?php
require_once('auth.php');
?>
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

<script language="javascript" type="text/javascript">
/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */
<!-- Begin
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
</head>
<body>
<?php include('navfixed.php');?>
<?php
$position=$_SESSION['SESS_LAST_NAME'];
if($position=='cashier') {
?>

<a href="../index.php">Logout</a>
<?php
}
if($position=='admin') {
?>
<div class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
          <div class="well sidebar-nav">
              <ul class="nav nav-list">
                        <li><a href="index.php"><i class="icon-dashboard icon-2x"></i> Dashboard </a></li> 
                        <li ><a  href="students.php"><i class="icon-group icon-2x"></i>Enrollment</a></li>
                        <li><a href="Attendance.php"><i class="icon-user icon-2x"></i>Attendance</a></li>
                        <li><a href="fee.php"><i class="icon-user icon-2x"></i>Fee Portal</a></li>
                        <li class='active'><a href="course.php"><i class="icon-book icon-2x"></i>Courses</a></li>
                        <li><a href="expenses.php"><i class="icon-money icon-2x"></i>Expenses</a></li>
                        <li><a href="admin.php"><i class="icon-user icon-2x"></i>Admin</a></li>
                        <li><a href="employee.php"><i class="icon-user icon-2x"></i>Employees</a></li>
                        <li><a  href="trainee.php"><i class="icon-group icon-2x"></i>Trainee</a></li>
                        <li ><a  href="worker.php"><i class="icon-group icon-2x"></i>Worker</a></li>  
                
                </ul>             
          </div><!--/.well -->
        </div><!--/span-->

<div class="span10" style="padding: 0 50px;">
			<div class="contentheader">
			<i class="icon-table"></i>Course Management
			</div>
			<ul class="breadcrumb">
				<li><a href="index.php">Dashboard</a></li> /
				<li class="active">Course Management</li>
			</ul>
<?php } ?>
    
<section style=' height: 150px;width: 100%; ;' >
        <form action="" method="post" id="mainmain">
        <button style='border:none; background:white;'  name="show_course" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Course</a>  </button>    
        <button style='border:none; background:white;'  name="add_course" type='submit'><a ><i class="icon-group icon-2x"></i><br>Add Course</a>  </button>    
        
        </form>
    </section>
    <section  id='show_record'>
        <!-- show Course -->
        <?php
				if(isset($_POST['show_course']))
				{
					?>
        <center>
            <h1>All Courses</h1>
            <table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:50%;">
                <tr>
                    <!-- <th class="td s_id" style='width:20px'><b>ID</b></th> -->
                    <th class="td "><b>Name</b></th>
                    <th class="td "><b>delete</b></th>
                </tr>
            </table>
        </center>
        <?php
					$query = "select * from course";
					$query_run = mysqli_query($connection,$query);
					while ($row = mysqli_fetch_assoc($query_run)) 
					{
						?>
        <center>
            <form action="delete_course.php" method="post">
                <table style="border-collapse: collapse;border: 1px solid black; margin:0; width:50%;">
                    <tr>
                        <!-- <td class="td" style='width:20px'><?php echo $row['id']?></td> -->
                        <td class="td"><?php echo $row['class']?></td>
                        <td class="td"><input type="submit" value="Delete" class='i_btn'></td>
                    </tr>
                </table>
                <input style='display:none' name='id' type="text" value="<?php echo $row['id']?>">
            </form>
        </center>
        <?php
					}
				}
		?>


        <!-- add new course -->
        <?php 
				if(isset($_POST['add_course'])){
			?>
        <h1 class="center">Add new Course</h1>
        <form action="add_course.php" method="post" id='add_course'
            style="padding: 21px 300px; display:flex; flex-direction:row">
            <div>
                <label for="course">Course Name<span style='color:red;'> *</span>:</label>
                <input id='course' type="text" name="course" placeholder="Write Course Name " required>
            </div>
            <input type="submit" name="add" value="Add Course" id='submit'
                style="width: auto;padding: 6px 11px; font-size:12px !important;">
        </form>
        <?php
			}
	    ?>
    </section>