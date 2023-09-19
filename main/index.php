<!DOCTYPE html>
<html>
<head>
  
<title>
E-Tech :: Student Information System
</title>

 <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
  
  <link rel="stylesheet" href="css/font-awesome.min.css">
    <style type="text/css">
    
      .sidebar-nav {
        padding: 9px 0;
        width: 17%;
        height:100%;
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
	
	<!-- <div class="contentheader">
			<i class="icon-dashboard"></i> Dashboard
			</div>
			<ul class="breadcrumb">
			<li class="active">Dashboard</li>
			</ul> -->
			<font style=" font:bold 44px 'Aleo'; color:#722290;"><center>E-Tech :: Student Information System</center></font>
<div id="mainmain">


                   
			<a href="students.php"><i class="icon-group icon-2x"></i><br>Enrollment</a>      
			<a href="Attendance.php"><i class="icon-user icon-2x"></i><br>Attendance</a>         
			<a href="fee.php"><i class="icon-user icon-2x"></i><br>Fee Portal</a>         
			<a href="course.php"><i class="icon-book icon-2x"></i><br>Courses</a>         
			<a href="expenses.php"><i class="icon-money icon-2x"></i><br>Expenses</a>         
			<a href="admin.php"><i class="icon-user icon-2x"></i><br>Admin</a> 
			<a href="employee.php"><i class="icon-user icon-2x"></i><br>Employees</a>         
			<a href="trainee.php"><i class="icon-group icon-2x"></i><br>Trainees</a>      
			<a href="worker.php"><i class="icon-group icon-2x"></i><br>Worker</a>     
<?php
}
?>
</div>
</body>
<?php include('footer.php'); ?>
</html>
