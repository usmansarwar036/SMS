<!DOCTYPE html>
<html>
<head>
   
	<title>Admin</title>
    <link rel="stylesheet" href="style.css">
	<?php 
require_once('auth.php');
?>
	
	<?php
		
	//	$name = "";
	//	$connection = mysqli_connect("localhost","root","");
	//	$db = mysqli_select_db($connection,"model");
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
								<li><a href="expenses.php"><i class="icon-money icon-2x"></i>Expenses</a></li>
								<li class='active'><a href="admin.php"><i class="icon-user icon-2x"></i>Admin</a></li>
								<li><a href="employee.php"><i class="icon-user icon-2x"></i>Employees</a></li>
			   			  <li><a  href="trainee.php"><i class="icon-group icon-2x"></i>Trainee</a></li>
			    			<li ><a  href="worker.php"><i class="icon-group icon-2x"></i>Worker</a></li>
				
				</ul>            
          </div><!--/.well -->
        </div><!--/span-->
		<div class="span10" style="padding: 0 50px;">
			<div class="contentheader">
			<i class="icon-table"></i>Admin
			</div>
			<ul class="breadcrumb">
				<li><a href="index.php">Dashboard</a></li> /
				<li class="active">Admin Management</li>
			</ul>
        <?php } ?>
		<section style=' margin:0 !important; height: 150px;width: 100%; '  >
		<form action="" method="post" id="mainmain">
        <button style='border:none; background:white;'  name="show_admin" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Admin</a>  </button> 
        <button style='border:none; background:white;'  name="add_admin" type='submit'><a ><i class="icon-group icon-2x"></i><br>Add Admin</a>  </button> 
        </form>
    </section> 
    <section  id= 'show_record'>
        <!-- show admins -->
        <?php
				if(isset($_POST['show_admin']))
				{
					?>
					<center>
						<h1>All Admins</h1>
					
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:70%;">
							<tr>
								
								<th class="td " style='width:300px;'><b>Admin Name</b></th>
								<th class="td " style='width:300px;'><b>User Name</b></th>
								<th class="td " style='width:300px;'><b>Password</b></th>
								<th class="td " style='width:300px;'><b>Delete</b></th>
							</tr>
							
								<?php
					$query = "select * from user";
					$query_run = mysqli_query($connection,$query);
					while ($row = mysqli_fetch_assoc($query_run)) 
					{ ?>
					
					
					<form action="delete_admin.php" method="post">
                        
                           <tr>
                                
                                    <td style='width:300px;' class="td"><?php echo $row['name']?></td>
                                    <td style='width:300px;' class="td"><?php echo $row['username']?></td>
                                    <td style='width:300px;' class="td"><input style='background: transparent !important; border:none !important; outline:none !important;box-shadow: none;cursor: default;' disabled type='password' value='<?php echo $row['password']?>'></td>
                                    <td style='width:300px;' class="td"><input type="submit" value="Delete" class='i_btn'></td>  
                                </tr>
                            
                            <input style='display:none'  name='id' type="text" value="<?php echo $row['id']?>" >
                        </form>
                        
						<?php
					} ?>
					</table>
						</center>
						<?php
				}
		?>


        <!-- add new admin -->
        <?php 
				if(isset($_POST['add_admin'])){
			?>
			<h1 class="center">Add new Admin</h1>
			<form action="add_admin.php" method="post" id='add_student' style="padding: 21px 300px;">
                <div>
					<label for="adminname">Name<span style='color:red;'> *</span>:</label>
					<input id='adminname' type="text" name="adminname" placeholder="Write Admin Name" required>
				</div>
                <div>
					<label for="name">UserName<span style='color:red;'> *</span>:</label>
					<input id='name' type="text" name="name" placeholder="Write User Name" required>
				</div>
				<div>
					<label for="password">Password<span style='color:red;'> *</span>:</label>
					<input id='password' type="text" name="password" placeholder="Write Admin Password" required>
				</div>
				<input type="submit" name="add" value="Add Admin" class='s_btn' id='submit' style="width: auto;padding: 6px 11px;">
			</form>
			<?php
			}
	    ?>
    </section>
</body>
</html>