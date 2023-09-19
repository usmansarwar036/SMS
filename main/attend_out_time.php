<!DOCTYPE html>
<html>
<head>
    
    <title>Out Attendance</title>
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
            <i class="icon-table"></i> Make Management
            </div>
            <ul class="breadcrumb">
                <li><a href="index.php">Dashboard</a></li> /
                <li><a href="Attendance.php">Attendance</a></li> /
                <li class="active"> Make Attendance</li>
            </ul>
        <?php }


         ?>
        	<center>


            <div class="container-fluid" style="width:95%;">
              
              <h3>Out-Time Attendance</h3>
        <a href="attend_in_time_class.php" class="btn btn-warning">Make Attendance</a> <br><br>

        
        <input type="search" name="search_bar" id='search_bar' style="width:98%;" placeholder="Search ID, Name or Class">
        

    <table class="table" id="table">
  <thead style="background: #722290;color: white;">
    <center>
    <tr>
      <th >ID</th>
      <th >Name</th>
      <th >class</th>
      <th >In Time</th>
      <th >Out Time</th>
      <!-- <th >Present</th> -->
    </tr></center>
  </thead>

             <?php
                        
                        $t_day = date("Y-m-d");
                        $query2 = "select * from come_time where date = '$t_day' order by id desc";
                        $query_run2 = mysqli_query($connection,$query2);
                        while ($row = mysqli_fetch_assoc($query_run2)) 
                        {
                 ?>
                <form method="post" action="attend_add_present.php">
                <tbody>
                <tr class="tr_search">
         
          <th style="width:50px"><input style="border: none; outline: none; width: 50px; box-shadow: none; cursor: default; background:transparent;" type="text" name="roll_no" value="<?php echo $row['roll_no']?>" readonly></th>
          <td ><input style="border: none; outline: none; width: 150px; box-shadow:none;  cursor: default; background:transparent;" type="text" value='<?php echo $row['name']?>' name="name" readonly></td>
          <td ><input style="border: none; outline: none; width: 150px; box-shadow:none; cursor: default; background:transparent;" type="text" value='<?php echo $row['class']?>' name="class" readonly></td>
          <td ><input style="border: none; outline: none; width: 150px; box-shadow:none;" type="text" value='<?php echo $row['in_time']?>' name="in_time"></td>
          <!-- type submit -->
          <td><input type="submit"  name='out_time'
                 onclick="time = new Date(); hour = time.getHours();
                   mint = time.getMinutes(); secs = time.getSeconds();
                   if(hour > 12){hour = hour%12; a_p = ' PM'; }
                   else if(hour == 12){ a_p = ' PM';}
                   else if(hour < 12){ a_p = ' AM';}
                   // this.value= reset(); 
                   this.value=`${hour} : ${mint} : ${secs} ${a_p}`;

                   "
                    class="btn btn-success"  value="Out time"></td>
          <!-- <td><input type="submit" name="add_present" value="Submit" class="btn btn-success"></td> -->
          
               <input type="text"style = 'display: none;' name="id" value="<?php echo $row['id']?>">
               <input type="text" style = 'display: none;' name="date" value="<?php echo $row['date']?>">

            </tr>
  </tbody>
       </form>
      
       <?php } ?>


   
</table>


            </div>



 <script>
        search = document.getElementById('search_bar')  // searching input
        search.addEventListener('input', function () {
            document.getElementById('table').style.display='table';
            let searchVal = search.value.toLowerCase();
            console.log('searching', searchVal);
            let itemsList = document.getElementsByClassName('tr_search');  //tr
            Array.from(itemsList).forEach(function (element) {

                let searchingPara0 = element.getElementsByTagName('input')[0].value.toLowerCase();
                let searchingPara1 = element.getElementsByTagName('input')[1].value.toLowerCase();
                let searchingPara2 = element.getElementsByTagName('input')[2].value.toLowerCase();
                
    
                if (searchingPara0.includes(searchVal) || searchingPara1.includes(searchVal) || searchingPara2.includes(searchVal)) {
                    element.style.display = 'table-row';
                }
                else {
                    element.style.display = 'none';
                }
    
            })
        })
    </script>







</body>


</html>