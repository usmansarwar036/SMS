<!DOCTYPE html>
<html>
<head>
   
	<title>Fee Portal</title>
    <link rel="stylesheet" href="style.css">
<?php 
require_once('auth.php');
?>

//	<?php
		
//		$name = "";
//		$connection = mysqli_connect("localhost","root","");
//		$db = mysqli_select_db($connection,"model");
//	?>
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
                        <li class='active'><a href="fee.php"><i class="icon-user icon-2x"></i>Fee Portal</a></li>
                        <li><a href="course.php"><i class="icon-book icon-2x"></i>Courses</a></li>
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
			<i class="icon-table"></i>Fee Management
			</div>
			<ul class="breadcrumb">
				<li><a href="index.php">Dashboard</a></li> /
				<li class="active">Fee Management</li>
			</ul>
<?php } ?>
<section style=' width: 100%;' >
    
    <form action="" method="post" id="mainmain">
        <button style='border:none; background:white;'  name="show_fee" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Fee</a>  </button> 
        <button style='border:none; background:white;'  name="search_fee" type='submit'><a ><i class="icon-group icon-2x"></i><br>Search Fee</a>  </button>  
        <div style="display:inline-block;"><a href='voucher.php' style="position: relative;top: 18px;"><i class="icon-group icon-2x"></i><br>Voucher</a></div>
        </form>
    </section> 
    <section  id= 'show_record'>

         <!-- add pay  -->

        <?php 
                    if(isset($_POST['add_fee']))
            {
                ?>
                <center>
                <form action="" method="post">
                    &nbsp;&nbsp;<b>ID:</b>&nbsp;&nbsp; <input type="text" name="id"
                        placeholder='Enter Id of Student'>
                    <input type="submit" class='i_btn' name="search_by_id" value="Search By id">
                </form><br><br>
                </center>
                <?php
                    }
                    // search by id
                    if(isset($_POST['search_by_id']))
                    {
                        $query = "select * from students where sr = '$_POST[id]' and status = 'active'";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            ?>
                        <h1 class="center">Add Fee</h1>
                        <form action="add_fee.php" method="post" id='add_student' style="padding: 21px 300px;">
                            <div>
                                <label for="roll_no">Id:</label>
                                <input type="text" disabled name='' id='roll_no' value="<?php echo $row['sr'];?>">
                                <input type="text" style='display:none;' name='roll_no' id='roll_no' value="<?php echo $row['sr'];?>">
                            </div>
                            <div>
                                <label for="name">Name:</label>
                                <input type="text" disabled name='name' id='name' value="<?php echo $row['name'];?>">
                                <input type="text" style='display:none;' name='name' id='name' value="<?php echo $row['name'];?>">
                            </div>
                            <div>
                                <label for="class">Course:</label>
                                <input type="text" disabled name='class' id='class' value="<?php echo $row['class'];?>">
                                <input type="text" style='display:none;' name='class' id='class' value="<?php echo $row['class'];?>">
                            </div>
                            <div>
                                <label for="month">Month<span style='color:red;'> *</span>:</label>
                                <input required type="month" name="month" id="month" placeholder='Write Sallary Month'>
                            </div>
                            <div>
                                <label for="course_fee">Course fee:</label>
                                <input id='course_fee' style='display:none;' type="number" name="course_fee" value="<?php echo $row['fee'];?>">
                                <input id='course_fee' disabled type="number"  value="<?php echo $row['fee'];?>">
                            </div>

                            <div>
                                <label for="balance">Remaining fee:</label>
                                <input id='balance' style='display:none;' type="number" name="balance" value="<?php echo $row['m_fee'];?>">
                                <input id='balance' disabled type="number"  value="<?php echo $row['m_fee'];?>">
                            </div>
                            
                            <div>
                                <label for="paying_pay">Paying fee<span style='color:red;'> *</span>:</label>
                                <input id='paying_pay' type="number" name="paying_fee"  placeholder="Write Paying Fee" required>
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
        
        <!-- show Record -->
        <?php
				if(isset($_POST['search_fee']))
            { ?>
            <center>
                <h1>
                    Select any any one option
                </h1>
                <form action="" method="post">
                    &nbsp;&nbsp;<b>ID of Emp:</b>&nbsp;&nbsp; <input type="text" name="input_id"
                        placeholder='Enter Id'>
                    <input type="submit" class='i_btn' name="search_by_id_fee" value="Search By Id"><br>
                    &nbsp;&nbsp;<b>Select Month:</b>&nbsp;&nbsp; <input type="month" name="input_month" id="">
                    <input type="submit" class='i_btn' name="search_by_month_fee" value="Search By Month">
                </form><br><br>
            </center>
                <?php
                    } 
				    if(isset($_POST['search_by_id_fee']))
                    {
                       ?>
                        <center>
						<h1>Fee record by ID</h1>
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
							<tr>
                                <th class="td " ><b>ID</b></th>
                                <th class="td s_name"><b>Name</b></th>
                                <th class="td s_class"><b>class</b></th>
                                <th class="td s_cell"><b>Month</b></th>
                                <th class="td s_fee"><b>Total Fee</b></th>
                                <th class="td s_m_fee"><b>Paying fee</b></th>
                                <th class="td s_remark"><b>Remarks</b></th>
                                <th class="td s_remark"><b>Action</b></th>
							</tr>
						</table>
					    </center>
                    <?php
                        $query = "select * from fee where roll_no = '$_POST[input_id]' and head = 'Fee'";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                    ?>
                        <center>
                            <form action="" method="post">
                                <table style="border-collapse: collapse;border: 1px solid black; margin:0; width:935px;">
                                    <tr>
                                        <td class="td" ><input style=' margin:0 !important; padding:0 !important; border:none;'  name='id' type="text" value="<?php echo $row['roll_no']?>" ></td>    
                                        <td class="td" style=''><input style=' margin:0 !important; padding:0 !important; border:none;'  name='name' type="text" value="<?php echo $row['name']?>" ></td>    
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['class']?>" ></td>    
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['month']?>" ></td>    
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['course_fee']?>" ></td>    
                                          
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='designation' type="text" value="<?php echo $row['paying_fee']?>" ></td>    
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['remark']?>" ></td>  
                                        <td class="td" style=' '><a href='print_voucher.php?id=<?php echo $row['id'] ?>' class='btn btn-success' >Print</a></td>
                                        
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
                    if(isset($_POST['search_by_month_fee']))
                    {
                       ?>
                        <center>
						<h1>Record Fee by Month</h1>
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
							<tr>
                                <th class="td s_id" ><b>ID</b></th>
                                <th class="td s_cell"><b>Month</b></th>
                                <th class="td s_name"><b>Name</b></th>
                                <th class="td s_class"><b>class</b></th>
                                <th class="td s_fee"><b>Total Fee</b></th>
                                <th class="td s_m_fee"><b>Paying fee</b></th>
                                <th class="td s_remark"><b>Remarks</b></th>
                                <th class="td s_remark"><b>Action</b></th>
							</tr>
						</table>
					    </center>
                    <?php
                        $query = "select * from fee where month = '$_POST[input_month]' and head = 'Fee'";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                    ?>
                        <center>
                            <form action="" method="post">
                                <table style="border-collapse: collapse;border: 1px solid black; margin:0; width:935px;">
                                    <tr>
                                    <td class="td"  '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='id' type="text" value="<?php echo $row['roll_no']?>" ></td>    
                                    <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['month']?>" ></td>    
                                        <td class="td" style=''><input style=' margin:0 !important; padding:0 !important; border:none;'  name='name' type="text" value="<?php echo $row['name']?>" ></td>    
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['class']?>" ></td>    
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['course_fee']?>" ></td>    
                                         
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='designation' type="text" value="<?php echo $row['paying_fee']?>" ></td>    
                                        <td class="td" style=' '><input style=' margin:0 !important; padding:0 !important; border:none;'  name='class' type="text" value="<?php echo $row['remark']?>" ></td>  
                                        <td class="td" style=' '><a href='print_voucher.php?id=<?php echo $row['id'] ?>' class='btn btn-success' >Print</a></td>
                                    
                                    </tr>
                                </table>
                            </form>
                            </center>
                        
                            <?php 
                        }
                    }   
                                ?>

        


        

        <!-- show all students -->
        <?php
                    if(isset($_POST['show_fee']))
                    {
                        ?>
            <center>
                <h1>All Fee Data</h1>
                <table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; ">
                    <tr style=" background:#722290;color: white;">
                        <th class="td s_id" ><b>ID</b></th>
                        <th class="td s_name"><b>Name</b></th>
                        <th class="td s_class"><b>class</b></th>
                        <th class="td s_cell"><b>Month</b></th>
                        <th class="td s_fee"><b>Total Fee</b></th>
                        <th class="td s_m_fee"><b>Paying fee</b></th>
                        <th class="td s_m_fee"><b>Remaining fee</b></th>
                        <th class="td s_m_fee"><b>Action</b></th>
                    </tr>
                
            </center>
            <?php
                        $query = "select * from fee where head = 'Fee' order by id desc";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            ?>
            <center>
                
                    <tr>
                        <td class="td" ><?php echo $row['roll_no']?></td>
                        <td class="td"><?php echo $row['name']?></td>
                        <td class="td"><?php echo $row['class']?></td>
                        <td class="td"><?php echo $row['month']?></td>
                        <td class="td"><?php echo $row['course_fee']?></td>
                        <td class="td"><?php echo $row['paying_fee']?></td>
                        <td class="td"><?php echo $row['ballance']?></td>
                         <td class="td" style=' '><a href='print_voucher.php?id=<?php echo $row['id'] ?>' class='btn btn-success' >Print</a></td>
                    </tr>
                <?php } ?>
                </table>
            </center>
            <?php
                        
                    }
		?>
    </section>