<!DOCTYPE html>
<html>
    
<head>
    <title>Attendance</title>
    <link rel="stylesheet" href="style.css">
    <?php 
    require_once('auth.php');
    ?>
    
    //<?php
        
    //  $name = "";
    //  $connection = mysqli_connect("localhost","root","");
    //  $db = mysqli_select_db($connection,"model");
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
                        <li class='active'><a href="Attendance.php"><i class="icon-user icon-2x"></i>Attendance</a></li>
                        <li><a href="fee.php"><i class="icon-user icon-2x"></i>Fee Portal</a></li>
                        <li><a href="course.php"><i class="icon-book icon-2x"></i>Courses</a></li>
                        <li><a href="expenses.php"><i class="icon-money icon-2x"></i>Expenses</a></li>
                        <li><a href="admin.php"><i class="icon-user icon-2x"></i>Admin</a></li>
                        <li><a href="employee.php"><i class="icon-user icon-2x"></i>Employees</a></li>
                        <li><a  href="trainee.php"><i class="icon-group icon-2x"></i>Trainee</a></li>
                        <li ><a  href="worker.php"><i class="icon-group icon-2x"></i>Worker</a></li>       
        </ul>               
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span10" >
            <div class="contentheader">
            <i class="icon-table"></i> Attendance Management
            </div>
            <ul class="breadcrumb">
                <li><a href="index.php">Dashboard</a></li> /
                <li class="active">Attendance Management</li>
            </ul>
        <?php } ?>
          <center>
  <div class="container-fluid " style="display: flex;justify-content: space-between;" >
      <form method="post" action="attend_show_record.php" id="mainmain" >
 
                <button style='border:none; padding: 0; background:white;'  name="a_p" type='submit'><a ><i class="icon-group icon-2x"></i><br>Attendance %</a>  </button> 
                <button style='border:none; background:white;'  name="c_r" type='submit'><a ><i class="icon-group icon-2x"></i><br>Custom Record</a>  </button> <br>

                 <button style='border:none; background:white;'><a href="show_deactive_attendance.php"><i class="icon-group icon-2x"></i><br>Deactive Attendance</a></button><br>



                 <div style="display: inline-block;"><a style="position: relative;" href="attend_in_time_class.php">
                        <?php               
                            $t_day = date("Y-m-d");
                            include('../connect.php');
                            $result = $db->prepare("select * from students where status = 'active' and d != '$t_day'");
                            $result->execute();
                            $rowcount = $result->rowcount();
                        ?>
                        <span style='background-color: #d0c2c2;width: 24px;height: 22px;display: inline-block;border-radius: 50%;position: absolute;top: 2px;right:2px;padding: 5px;'><?php echo $rowcount;?></span> 
                        <i class="icon-group icon-2x"></i><br>In-Time Attendance</a>
                 </div>


                 <div style="display: inline-block;"><a style="position: relative;" href="attend_out_time.php">
                    <?php 
                            $result2 = $db->prepare("select * from come_time where date = '$t_day'");
                            $result2->execute();
                            $rowcount2 = $result2->rowcount();
                        ?>
                        <span style='background-color: #d0c2c2;width: 24px;height: 22px;display: inline-block;border-radius: 50%;position: absolute;top: 2px;right:2px;padding: 5px;'><?php echo $rowcount2;?></span>                 
                        <i class="icon-group icon-2x"></i><br>Out-Time Attendance</a>
                 </div>






      </form>
    </div>
</body>


</html>