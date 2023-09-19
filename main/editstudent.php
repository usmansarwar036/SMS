<html>
<head>
   
<title>
Edit Student
</title>

<?php 
require_once('auth.php');
?>
 <link href="css/bootstrap.css" rel="stylesheet">

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
                        <li  class='active'><a  href="students.php"><i class="icon-group icon-2x"></i>Enrollment</a></li>
                        <li><a href="Attendance.php"><i class="icon-user icon-2x"></i>Attendance</a></li>
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
	<div class="span10">
	<div class="contentheader">
			<i class="icon-table"></i> Students
			</div>
			<ul class="breadcrumb">
			<li><a href="index.php">Dashboard</a></li> /
			<li class="active">Students</li>
			</ul>


<div style="margin-top: -19px; margin-bottom: 21px;">
<a  href="index.php"><button class="btn btn-default btn-large" style="float: left;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
<center><?php
	include('../connect.php');
	$id=$_GET['id'];
	$result = $db->prepare("SELECT * FROM students WHERE id= :userid");
	$result->bindParam(':userid', $id);
	$result->execute();
	for($i=0; $row = $result->fetch(); $i++){
?>
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="saveeditstudent.php" method="post" enctype="multipart/form-data">
<center><h4><i class="icon-edit icon-large"></i> Edit Student</h4></center>
<hr>
<img src="../uploads/<?php echo $row['file'];?>" class="roundimage2"  alt=""/><br>
<span>Change Pic: </span><input style='padding: 0 !important;' type="file" name="file" id="file"><br><br>
<div id="ac">
 <span>ID : </span><input type="text" style="width:265px; height:30px;"   value="<?php echo $row['sr']; ?>" readonly Required/><br>
<span>Reg No. : </span><input type="text" style="width:265px; height:30px;"   value="<?php echo $row['id']; ?>" readonly Required/><br>
<input type="text" style="width:265px; height:30px; display:none;"  name="id" value="<?php echo $row['id']; ?>" />
<span>Name : </span><input type="text" style="width:265px; height:30px;"  name="name" value="<?php echo $row['name']; ?>" /><br>
<span>CNIC : </span><input type="number" style="width:265px; height:30px;"  name="cnic" value="<?php echo $row['cnic']; ?>" /><br>
<span>D.O.B: </span><input type	="date" style="width:265px; height:30px;" name="dob" value="<?php echo $row['dob']; ?>" /><br>
<span>Father Name: </span><input type	="text" style="width:265px; height:30px;" name="f_name" value="<?php echo $row['f_name']; ?>" /><br>


<span>Current Course: </span>
<select name="class" id="class"  required style='width: 265px; height:auto;' >
                        <option selected value="<?php echo $row['class'];?>"><?php echo $row['class'];?></option>
                        <?php
                            $query1 = "select * from course";
                            $query_run1 = mysqli_query($connection,$query1);
                            while($row1 = mysqli_fetch_array($query_run1))
                            {		
                        ?>
                        <option value="<?php echo $row1[1];?>"><?php echo $row1[1];?></option>
                        <?php }?>
                    </select><br>

<span>Previous Courses: </span><input type="text" style="width:265px; height:30px;" value="<?php echo $row['old_class']; ?>" name="old_class"  /><br>
<span>Admition Date: </span><input type="date" style="width:265px; height:30px;" value="<?php echo $row['adm_date']; ?>" name="adm_date" required /><br>
<span>Complete Date: </span><input type="date" style="width:265px; height:30px;" value="<?php echo $row['end_date']; ?>" name="end_date"  /><br>

<span>Certificate: </span>
<select name="certificate"  style='width: 265px; height:auto;'>
    <option selected disabled value="<?php echo $row['certificate'];?>"><?php echo $row['certificate'];?></option>
    <option value="Issued">Issued</option>
    <option value="Not Issued">Not Issued</option>
</select><br>

<span>Phone : </span><input type="number" style="width:265px; height:30px;" value="<?php echo $row['cell']; ?>" name="cell" required /><br>
<span>Fee : </span><input type="number" style="width:265px; height:30px;" value="<?php echo $row['fee']; ?>" name="fee" required /><br>

<span>Remaining Fee : </span><input type="number" style="width:265px; height:30px;" value="<?php echo $row['m_fee']; ?>" name="m_fee" required /><br>

<span>Monthly Fee : </span><input type="number" style="width:265px; height:30px;" value="<?php echo $row['monthly_fee']; ?>" name="monthly_fee" required /><br>

<span>Reference : </span><textarea style="width:265px; height:50px;" name="refr" ><?php echo $row['refr']; ?> </textarea><br><br>

<div >

<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save Changes</button>
</div>
</div>
</form>
<?php
}
?>
</center>

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