<!DOCTYPE html>
<html>
    
<head>
    
	<title>Employee</title>
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
                        <li><a href="expenses.php"><i class="icon-money icon-2x"></i>Expenses</a></li>
                        <li><a href="admin.php"><i class="icon-user icon-2x"></i>Admin</a></li>
                        <li class='active'><a href="employee.php"><i class="icon-user icon-2x"></i>Employees</a></li>
                        <li><a  href="trainee.php"><i class="icon-group icon-2x"></i>Trainee</a></li>
                        <li ><a  href="worker.php"><i class="icon-group icon-2x"></i>Worker</a></li> 
                
                </ul>             
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span10" style="padding: 0 50px;">
			<div class="contentheader">
			<i class="icon-table"></i>Employee Management
			</div>
			<ul class="breadcrumb">
				<li><a href="index.php">Dashboard</a></li> /
				<li class="active">Employee Management</li>
			</ul>
        <?php } ?>
    <section style=' height: 230px;width: 100%; ' >
    <form action="" method="post" id="mainmain">
        <button style='border:none; background:white;'  name="show_emp" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Employees</a>  </button> 
        <button style='border:none; background:white;'  name="add_emp" type='submit'><a ><i class="icon-group icon-2x"></i><br>Add Employees</a>  </button> 
        <button style='border:none; background:white;'  name="show_record" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Record</a>  </button> 
        <button style='border:none; background:white;'  name="show_pay" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Pay</a>  </button> 
        <button style='border:none; background:white;'  name="add_pay" type='submit'><a ><i class="icon-group icon-2x"></i><br>Add Pay</a>  </button> 
        </form>
    </section>
    <section id='show_record'>
        <!-- show Employee -->
        <?php
				if(isset($_POST['show_emp']))
				{
					?>
					<center>
						<h1>All Employees</h1>
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:900px;">
							<tr>
								<th class="td s_id" style='width:20px'><b>ID</b></th>
								<th class="td " ><b>Name</b></th>
								<th class="td " ><b>CNIC</b></th>
								<th class="td " ><b>Designation</b></th>
								<th class="td " ><b>Class</b></th>
								<th class="td " style='width:80px'><b>Delete</b></th>
							</tr>
						</table>
					</center>
					<?php
					$query = "select * from employee";
					$query_run = mysqli_query($connection,$query);
					while ($row = mysqli_fetch_assoc($query_run)) 
					{
						?>
						<center>
                        <form action="delete_employee" method="post">
                            <table style="border-collapse: collapse;border: 1px solid black; margin:0; width:900px;">
                                <tr>
                                    <td class="td" style='width:33px '><input style='width:20px !important; margin:0 !important; padding:0 !important; border:none;'  name='id' type="text" value="<?php echo $row['id']?>" ></td>    
                                    <td class="td" style=''><input style='width:auto !important; margin:0 !important; padding:0 !important; border:none;'  name='name' type="text" value="<?php echo $row['name']?>" ></td>    
                                    <td class="td" style=' '><input style='width:auto !important; margin:0 !important; padding:0 !important; border:none;'  name='cnic' type="text" value="<?php echo $row['cnic']?>" ></td>    
                                    <td class="td" style=' '><input style='width:auto !important; margin:0 !important; padding:0 !important; border:none;'  name='designation' type="text" value="<?php echo $row['designation']?>" ></td>    
                                    <td class="td" style=' '><input style='width:auto !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['class']?>" ></td>    
                                    <td class="td"><input type="submit" value="Delete" class='i_btn'></td>  
                                </tr>
                            </table>
                        </form>
						</center>
						<?php
					}
				}
		?>

        <!-- add new employee -->
        <?php 
                    if(isset($_POST['add_emp']))
            {
                ?>
            <h1 class="center">Add new Employee</h1>
            <form action="add_employee.php" method="post" id='add_student' style="padding: 21px 300px;">
                <div>
                    <label for="name">Name<span style='color:red;'> *</span>:</label>
                    <input id='name' type="text" name="name" placeholder="Write Employee Name" required>
                </div>
                <div>
                    <label for="cnic">CNIC<span style='color:red;'> *</span>:</label>
                    <input id='cnic' type="text" name="cnic" placeholder="Write Employee cnic" required>
                </div>
                <div>
                    <label for="designation">Designation<span style='color:red;'> *</span>:</label>
                    <input id='designation' required type="text" name="designation" placeholder="Write Emp Designation"
                        required>
                </div>
                <div>
                    <label for="class">Class:</label>
                    <select name="class" id="class" style='width: 265px; padding: 4px; margin:5px 20px;'>
                        <option selected disabled>select any option</option>
                        <?php
                                    $query1 = "select * from course";
                                    $query_run1 = mysqli_query($connection,$query1);
                                    while($row1 = mysqli_fetch_array($query_run1))
                                    {		
                                        ?>
                        <option value="<?php echo $row1[1];?>"><?php echo $row1[1];?></option>
                        <?php }?>
                    </select>
                </div>

                <input type="submit" name="add" value="Add Employee" class='s_btn' id='submit'
                    style="width: auto;padding: 6px 11px;">
            </form>
            <?php
            }
	    ?>

        <!-- show Record -->
        <?php
				if(isset($_POST['show_record']))
            { ?>
            <center>
                <h1>
                    Select any any one option
                </h1>
                <form action="" method="post">
                    &nbsp;&nbsp;<b>ID of Emp:</b>&nbsp;&nbsp; <input type="text" name="input_id"
                        placeholder='Enter Id'>
                    <input type="submit" class='i_btn' name="search_by_id_record" value="Search By Id"><br>
                    &nbsp;&nbsp;<b>Select Month:</b>&nbsp;&nbsp; <input type="month" name="input_month" id="">
                    <input type="submit" class='i_btn' name="search_by_month_record" value="Search By Month">
                </form><br><br>
            </center>
                <?php
                    } 
				    if(isset($_POST['search_by_id_record']))
                    {
                       ?>
                        <center>
						<h1>Record by Employee's ID</h1>
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
							<tr>
								<th class="td s_id" style='width:33px'><b>ID</b></th>
								<th class="td " ><b>Name</b></th>
								<th class="td " ><b>Designation</b></th>
								<th class="td " ><b>Class</b></th>
								<th class="td " ><b>Total Pay</b></th>
								<th class="td " ><b>Ballance</b></th>
								<th class="td " ><b>Month</b></th>
								<th class="td " ><b>Remarks</b></th>
							</tr>
						</table>
					    </center>
                    <?php
                        $query = "select * from pay where roll_no = '$_POST[input_id]'";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                    ?>
                        <center>
                            <form action="delete_record_id.php" method="post">
                                <table style="border-collapse: collapse;border: 1px solid black; margin:0; width:935px;">
                                    <tr>
                                        <td class="td" style='width:33px '><input style='width:20px !important; margin:0 !important; padding:0 !important; border:none;'  name='id' type="text" value="<?php echo $row['roll_no']?>" ></td>    
                                        <td class="td" style=''><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='name' type="text" value="<?php echo $row['name']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='designation' type="text" value="<?php echo $row['designation']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['class']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['total_pay']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['ballance']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['month']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['remark']?>" ></td>    
                                        
                                    </tr>
                                </table>
                            </form>
                            </center>
                        
                            <?php 
                        }
                    }   
                                ?>
                    <!-- show record by month -->
                    <?php
                    if(isset($_POST['search_by_month_record']))
                    {
                       ?>
                        <center>
						<h1>Record by Sallery Month</h1>
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
							<tr>
								<th class="td s_id" style='width:33px'><b>ID</b></th>
								<th class="td " ><b>Month</b></th>
								<th class="td " ><b>Name</b></th>
								<th class="td " ><b>Designation</b></th>
								<th class="td " ><b>Class</b></th>
								<th class="td " ><b>Total Pay</b></th>
								<th class="td " ><b>Ballance</b></th>
								<th class="td " ><b>Remarks</b></th>
							</tr>
						</table>
					    </center>
                    <?php
                        $query = "select * from pay where month = '$_POST[input_month]'";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                    ?>
                        <center>
                            <form action="delete_record_id.php" method="post">
                                <table style="border-collapse: collapse;border: 1px solid black; margin:0; width:935px;">
                                    <tr>
                                        <td class="td" style='width:33px '><input style='width:20px !important; margin:0 !important; padding:0 !important; border:none;'  name='id' type="text" value="<?php echo $row['roll_no']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['month']?>" ></td>    
                                        <td class="td" style=''><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='name' type="text" value="<?php echo $row['name']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='designation' type="text" value="<?php echo $row['designation']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['class']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['total_pay']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['ballance']?>" ></td>    
                                        <td class="td" style=' '><input style='width:120px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['remark']?>" ></td>  
                                    </tr>
                                </table>
                            </form>
                            </center>
                        
                            <?php 
                        }
                    }   
        ?>

        


        <!-- show pay -->
        <?php
				if(isset($_POST['show_pay']))
				{
					?>
					<center>
						<h1>All Payments</h1>
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:1100px;">
							<tr>
								<th class="td s_id" style='width:33px'><b>ID</b></th>
								<th class="td " ><b>Name</b></th>
								<th class="td " ><b>Designation</b></th>
								<th class="td " ><b>Class</b></th>
								<th class="td " ><b>Total Pay</b></th>
								<th class="td " ><b>Ballance</b></th>
								<th class="td " ><b>Month</b></th>
								<th class="td " ><b>remark</b></th>
								<th class="td " style='width:71px'><b>Delete</b></th>
							</tr>
						</table>
					</center>
					<?php
					$query = "select * from pay";
					$query_run = mysqli_query($connection,$query);
					while ($row = mysqli_fetch_assoc($query_run)) 
					{
						?>
						<center>
                        <form action="delete_pay.php" method="post">
                            <table style="border-collapse: collapse;border: 1px solid black; margin:0; width:1100px;">
                                <tr>
                                    <td style="display:none;"><input type="text" name='id'  value="<?php echo $row['id']?>" ></td>
                                    <td class="td" style='width:33px '><input style='width:20px !important; margin:0 !important; padding:0 !important; border:none;'  name='roll_no' type="text" value="<?php echo $row['roll_no']?>" ></td>    
                                    <td class="td" style=''><input style='width:129px !important; margin:0 !important; padding:0 !important; border:none;'  name='name' type="text" value="<?php echo $row['name']?>" ></td>   
                                    <td class="td" style=' '><input style='width:129px !important; margin:0 !important; padding:0 !important; border:none;'  name='designation' type="text" value="<?php echo $row['designation']?>" ></td>    
                                    <td class="td" style=' '><input style='width:129px !important; margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['class']?>" ></td>    
                                    <td class="td" style=' '><input style='width:129px !important; margin:0 !important; padding:0 !important; border:none;'  name='total_pay' type="text" value="<?php echo $row['total_pay']?>" ></td>    
                                    <td class="td" style=' '><input style='width:129px !important; margin:0 !important; padding:0 !important; border:none;'  name='ballance' type="text" value="<?php echo $row['ballance']?>" ></td>    
                                    <td class="td" style=' '><input style='width:129px !important; margin:0 !important; padding:0 !important; border:none;'  name='month' type="text" value="<?php echo $row['month']?>" ></td>    
                                    <td class="td" style=' '><input style='width:129px !important; margin:0 !important; padding:0 !important; border:none;'  name='remark' type="text" value="<?php echo $row['remark']?>" ></td>    
                                    <td class="td" style='width:76px;'><input type="submit" value="Delete" class='i_btn'></td>  
                                </tr>
                            </table>
                        </form>
						</center>
						<?php
					}
				}
		?>

        <!-- add pay  -->

        <?php 
                    if(isset($_POST['add_pay']))
            {
                ?>
                <center>
                <form action="" method="post">
                    &nbsp;&nbsp;<b>ID:</b>&nbsp;&nbsp; <input type="text" name="id"
                        placeholder='Enter Id of Employee'>
                    <input type="submit" class='i_btn' name="search_by_id" value="Search By id">
                </form><br><br>
                <h4><b><u>Employee's details</u></b></h4><br><br>
                </center>
                <?php
                    }
                    // search by id
                    if(isset($_POST['search_by_id']))
                    {
                        $query = "select * from employee where id = '$_POST[id]'";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            ?>
                        <h1 class="center">Add Pay</h1>
                        <form action="add_pay.php" method="post" id='add_student' style="padding: 21px 300px;">
                            <div>
                                <label for="roll_no">Id:</label>
                                <input type="text" disabled name='roll_no' id='roll_no' value="<?php echo $row['id'];?>">
                                <input type="text" style='display:none;' name='roll_no' id='roll_no' value="<?php echo $row['id'];?>">
                            </div>
                            <div>
                                <label for="name">Name:</label>
                                <input type="text" disabled name='name' id='name' value="<?php echo $row['name'];?>">
                                <input type="text" style='display:none;' name='name' id='name' value="<?php echo $row['name'];?>">
                            </div>
                            <div>
                                <label for="designation">Designation:</label>
                                <input type="text" disabled name='designation' id='designation' value="<?php echo $row['designation'];?>">
                                <input type="text" style='display:none;' name='designation' id='designation' value="<?php echo $row['designation'];?>">
                            </div>
                            <div>
                                <label for="class">Class:</label>
                                <input type="text" disabled name='class' id='class' value="<?php echo $row['class'];?>">
                                <input type="text" style='display:none;' name='class' id='class' value="<?php echo $row['class'];?>">
                            </div>
                            <div>
                                <label for="total_pay">Paying Amount<span style='color:red;'> *</span>:</label>
                                <input id='total_pay' required type="text" name="total_pay" placeholder="Write Total Pay" required>
                            </div>
                            <div>
                                <label for="ballance">Ballance<span style='color:red;'> *</span>:</label>
                                <input id='ballance' required type="text" name="ballance" placeholder="Write Remaining Ballance" required>
                            </div>
                            <div>
                                <label for="month">Month<span style='color:red;'> *</span>:</label>
                                <input required type="month" name="month" id="month" placeholder='Write Sallary Month'>
                            </div>
                            <div>
                                <label for="remark">Remark:</label>
                                <input  type="text" name="remark" id="remark" placeholder='Write remarks' >
                            </div>

                            <input type="submit" name="add" value="Add Pay" class='s_btn' id='submit'
                                style="width: auto;padding: 6px 11px;">
                        </form>
            <?php
                        }
                    }
	    ?>




    </section>
</body>

</html>