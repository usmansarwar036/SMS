<!DOCTYPE html>
<html>
<head>
   
	<title>Expenses</title>
    <link rel="stylesheet" href="style.css">
	<?php 
require_once('auth.php');
?>
	
	<?php
		
//		$name = "";
//		$connection = mysqli_connect("localhost","root","");
//		$db = mysqli_select_db($connection,"model");
	?>
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
                        <li><a href="course.php"><i class="icon-book icon-2x"></i>Courses</a></li>
                        <li class='active'><a href="expenses.php"><i class="icon-money icon-2x"></i>Expenses</a></li>
                        <li><a href="admin.php"><i class="icon-user icon-2x"></i>Admin</a></li>
                        <li><a href="employee.php"><i class="icon-user icon-2x"></i>Employees</a></li>
                        <li><a  href="trainee.php"><i class="icon-group icon-2x"></i>Trainee</a></li>
                        <li ><a  href="worker.php"><i class="icon-group icon-2x"></i>Worker</a></li> 
                
            </ul>              
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span10" style="padding: 0 50px;">
			<div class="contentheader">
			<i class="icon-table"></i>Expenses Management
			</div>
			<ul class="breadcrumb">
				<li><a href="index.php">Dashboard</a></li> /
				<li class="active">Expenses Management</li>
			</ul>
        <?php } ?>
    <section style='margin-bottom: 10px;width: 100%; ' >
    <form action="" method="post" id="mainmain">
        <button style='border:none; background:white;'  name="show_expensive" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Expenses</a>  </button> 
        <button style='border:none; background:white;'  name="add_expensive" type='submit'><a ><i class="icon-group icon-2x"></i><br>Add Expenses</a>  </button> 
        <button style='border:none; background:white;'  name="add_income" type='submit'><a ><i class="icon-group icon-2x"></i><br>Add Extra Income</a>  </button> 
        <button style='border:none; background:white;'  name="show_income" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Extra Income</a>  </button> 
        <button style='border:none; background:white;'  name="show_report" type='submit'><a ><i class="icon-group icon-2x"></i><br>Create Report</a>  </button> 
         
        </form>
    </section>
    <section id='show_record'>
        <!-- show Expensive -->
        <?php
                        if(isset($_POST['show_expensive'] ))
                        {
                            ?>

                           <center> <form action="show_expenses_record.php" method="post">
                            <h3> Show Expenses</h3>

                    <b>Select Date From </b><input type="date" name="from_date" id=""><b> to </b><input type="date" name="to_date" id="">
                    <input type="submit" class="btn btn-primary" name="show_from_to_expenses"> </form></center>

                     <?php  } ?>

         <!-- show income -->
        <?php
                        if(isset($_POST['show_income'] ))
                        {
                            ?>

                           <center> <form action="show_expenses_record.php" method="post">
                            <h3> Show Extra Income</h3>
                    <b>Select Date From </b><input type="date" name="from_date" id=""><b> to </b><input type="date" name="to_date" id="">
                    <input type="submit" class="btn btn-primary"  name="show_from_to_income"> </form></center>

                     <?php  } ?>
         <!-- show report -->

         <?php
                        if(isset($_POST['show_report'] ))
                        {
                            ?>

                           <center> <form action="show_report.php" method="post">
                            <h3> Create Report</h3>
                    <b>Select Date From </b><input type="date" name="from_date" id=""><b> to </b><input type="date" name="to_date" id="">
                    <input type="submit" class="btn btn-primary"  name="show_from_to_report"> </form></center>

                     <?php  } ?>


        <!-- add new expenses -->
        <?php 
                        if(isset($_POST['add_expensive'])){
                    ?>
                <h1 style="margin-bottom: 20px;" class="center">Add new Expenses</h1>
                
                <form action="add_expenses.php" method="post" id='add_student'>
                    <div>
                        <label for="name"> Expense Name:</label>
                        <input type="text" name="name" placeholder="Write Name " required>
                    </div>
                    <div>
                        <label for="amount">Charges:</label>
                        <input  type="number" name="amount" id="amount" placeholder="Write Charges " required>
                    </div>
                    <div>
                        <label for="date">Date:</label>
                        <input id='date' type="date" name="date" placeholder="Select date " required>
                    </div>
                    <div>
                        <label for="remark">Remarks:</label>
                        <input id='remark' type="text" name="remark" placeholder="Write Remarks " >
                    </div>
                    <input type="submit" name="add" value="Add Expensive" id='submit'
                        style="width: auto;padding: 6px 11px; font-size:12px !important;">
                </form>
                <?php
                        
                    }
	    ?>
        <!-- add new income -->

        <?php 
                        if(isset($_POST['add_income'])){
                    ?>
                <h1 style="margin-bottom: 20px;" class="center">Add Extra Income</h1>
                
                <form action="save_income.php" method="post" id='add_student'>
                    <div>
                        <label for="name"> Income Name:</label>
                        <input type="text" name="name" placeholder="Write Name " required>
                    </div>
                    <div>
                        <label for="amount">Charges:</label>
                        <input  type="number" name="amount" id="amount" placeholder="Write Charges " required>
                    </div>
                    <div>
                        <label for="date">Date:</label>
                        <input id='date' type="date" name="date" placeholder="Select date " required>
                    </div>
                    <div>
                        <label for="remark">Remarks:</label>
                        <input id='remark' type="text" name="remark" placeholder="Write Remarks " >
                    </div>
                    <input type="submit" name="add" value="Add Income" id='submit'
                        style="width: auto;padding: 6px 11px; font-size:12px !important;">
                </form>
                <?php
                        
                    }
        ?>

        
    </section>