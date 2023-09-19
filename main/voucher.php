<!DOCTYPE html>
<html>
   
<head>
    
	<title>Vouchers</title>
    <link rel="stylesheet" href="style.css">
	<?php 
    require_once('auth.php');
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
			<i class="icon-table"></i>Voucher Management
			</div>
			<ul class="breadcrumb">
				<li><a href="index.php">Dashboard</a></li> /
                <li><a href="fee.php">Fee Management</a></li> /
				<li class="active">Voucher Management</li>
			</ul>
        <?php } ?>
    <section style=' min-height: 150px;width: 100%; ' >
        <form action="" method="post"  id="mainmain">
        <button style='border:none; background:white;'  name="class_voucher" type='submit'><a ><i class="icon-group icon-2x"></i><br>Class Voucher</a>  </button>    
        <button style='border:none; background:white;' name="student_voucher" type='submit'><a ><i class="icon-group icon-2x"></i><br>Student Voucher</a>  </button> 
        <button style='border:none; background:white;' name="show_voucher" type='submit'><a ><i class="icon-group icon-2x"></i><br>Show Vouchers</a>  </button>
        </form>
    </section>
    <div id="show_record">




        <!-- class voucher -->
        <?php 
                        if(isset($_POST['class_voucher'])){
                    ?>
                <h1 class="center">Class Voucher</h1>
                <center>
                        <form method="post" id='add_student'>
                        <div class="form-group">
                            
                            <label for="class">Class:</label>
                            <select class="form-controll" name="class" required id="class" style='width: 265px; padding: 4px; margin:5px 20px;'>
                                <option selected value="">select any option</option>
                                <?php
                                            $query1 = "select * from course";
                                            $query_run1 = mysqli_query($connection,$query1);
                                            while($row1 = mysqli_fetch_array($query_run1))
                                            {		
                                                ?>
                                <option value="<?php echo $row1['class'];?>"><?php echo $row1['class'];?></option>
                                <?php }?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="month_input">Month:</label>
                            <input style=" width: 255px;" class="form-controll" type="month" required name="month" id="month_input">
                        </div>
                         <!-- <div class="form-group">
                            <label for="amount">Amount:</label>
                            <input style=" width: 255px;" type="number"  name="amount" id="amount" required placeholder="amount">
                        </div> -->
                            <input type="submit" class='i_btn' name="search_class" value="Search">
                        </form><br><br>
                    </center>


          
                <?php 
                                } 




                                    


                                     if(isset($_POST['search_class'])){
                                        ?>
                                                <center>
                                                <h1>Students Vouchers <?php echo $_POST['class'] ?></h1>
                                                <b>Month: <?php echo $_POST['month'] ?> <a href="add_voucher_class.php?class=<?php echo $_POST['class']; ?>&month=<?php echo $_POST['month'];?>" class="btn btn-success" > Print All</a> <br> <br>
                                                <table>
                                                    <tr>
                                                        <th class="td s_id"><b>ID</b></th>
                                                        <th class="td "><b>Name</b></th>
                                                        <th class="td "><b>Fee</b></th>
                                                        <th class="td "><b>Challan</b></th>
                                                    </tr>
                                                
                                                <?php
                                                
                                                    $query = "select * from students where class = '$_POST[class]' and status = 'active'";
                                                    $query_run = mysqli_query($connection,$query);
                                                    while ($row = mysqli_fetch_assoc($query_run)) 
                                                    
                                                    {
                                                ?>
                                                        <form method="post" action="add_voucher_stud.php">
                                                        <tr>
                                                            <td class="td" name='roll_no'><input readonly  name='roll_no' type="text" value="<?php echo $row['sr']?>" ></td>    
                                                            <td class="td"><input readonly name='name' type="text" value="<?php echo $row['name']?>" ></td>
                                                            <td class="td"><input name='paying_fee' type="text" value="<?php echo $row['monthly_fee']?>" ></td>
                                                            <td class="td">
                                                                <a ><button class="btn btn-success" name="print">Print</button></a>
                                                            </td>
                                                            
                                                            
                                                        </tr>
                                                        <input style='display:none'  name='class' type="text" value="<?php echo $row['class']?>" >
                                                        <input type="text" style="display:none" name='month' value='<?php echo $_POST['month'] ?>'>
                                                        <input type="text" style="display:none" name='course_fee' value='<?php echo $row['fee'] ?>'>
                                                        <input type="text" style="display:none" name='m_fee' value='<?php echo $row['m_fee'] ?>'>
                                                        </form>
                                                        
                                                <?php }  ?>
                                            


                                     </table>    
                                                </center>
                                                <?php
                                            }

        ?>




        <!-- student voucher -->

        <?php 
                    if(isset($_POST['student_voucher']))
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
                        <h1 class="center">Create Voucher</h1>
                        <form action="add_voucher_stud.php" method="post" id='add_student' style="padding: 21px 300px;">
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
                                <input id='course_fee' disabled type="number"  value="<?php echo $row['fee'];?>" >
                            </div>
                            
                            <div>
                                <label for="m_fee">Remaining fee:</label>
                                <input id='m_fee' style='display:none;' type="number" name="m_fee" value="<?php echo $row['m_fee'];?>">
                                <input id='m_fee' disabled type="number"  value="<?php echo $row['m_fee'];?>" >
                            </div>

                            <div>
                                <label for="paying_pay">Monthly fee<span style='color:red;'> *</span>:</label>
                                <input id='paying_pay' value="<?php echo $row['monthly_fee']; ?>" type="number" name="paying_fee"  placeholder="Write Paying Fee" required>
                            </div>
                            
                            
                            <div>
                                <label for="remark">Remark:</label>
                                <input  type="text" name="remark" id="remark" placeholder='Write remarks' >
                            </div>

                            <input type="submit" name="add" value="Print" class='s_btn' id='submit' style="width: auto;padding: 6px 11px;">
                        </form>
                        <?php
                        }
                    }
        ?>




        <!-- show Vouchers -->
        <?php 
                if(isset($_POST['show_voucher'])){
                    ?>
                    <center><h1>Show Vouchers</h1></center><br>
                <table>
                    <tr style="border: none;background: #722290; color:white;">
                        <th style="border: none;" class="td s_id"><b>Roll No.</b></th>
                        <th style="border: none;" class="td "><b>Voucher No.</b></th>
                        <th style="border: none;" class="td "><b>Name</b></th>
                        <th style="border: none;" class="td "><b>Class</b></th>
                        <th style="border: none;" class="td "><b>Total Fee</b></th>
                        <th style="border: none;" class="td "><b>Paying Fee</b></th>
                        <th style="border: none;" class="td "><b> Month</b></th>
                        <th style="border: none;" class="td "><b> Date</b></th>
                        <th style="border: none;" class="td "><b> Action</b></th>
                    </tr>
                      <?php
                        $query = "select * from voucher order by id desc";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {?>
                        <form method="post" action="add_fee.php">
                    <tr>
                        
                        <td class="td"><?php echo $row['roll_no']?> </td>
                        <td class="td"><?php echo $row['voucher_no']?> </td>
                        <td class="td"><?php echo $row['name']?> </td>
                        <td class="td"><?php echo $row['class']?> </td>
                        <td class="td"><?php echo $row['fee']?> </td>
                        <td class="td"><?php echo $row['paying_fee']?> </td>
                        <td class="td"><?php echo $row['month']?> </td>
                        <td class="td"><?php echo $row['date']?> </td>
                        <td class="td"><button  style="margin:2px;border: none;background: #722290; color:white;padding: 5px 10px !important;border-radius: 5px;" name="pay">Paid</button> 
                        <a class='btn' href='voucher_delete.php?id=<?php echo $row['id']; ?>' style="margin:2px;border: none;background: red; color:white;padding: 5px 10px !important;border-radius: 5px;" name="delete" >delete</a>
                        </td>
                    </tr>
                        <input type="text" style="display:none;" value="<?php echo $row['id']?> " name="id">
                        <input type="text" style="display:none;" value="<?php echo $row['roll_no']?> " name="roll_no">
                        <input type="text" style="display:none;" value="<?php echo $row['name']?> " name="name">
                        <input type="text" style="display:none;" value="<?php echo $row['voucher_no']?> " name="voucher_no">
                        <input type="text" style="display:none;" value="<?php echo $row['class']?> " name="class">
                        <input type="text" style="display:none;" value="<?php echo $row['month']?> " name="month">
                        <input type="text" style="display:none;" value="<?php echo $row['fee']?> " name="course_fee">
                        <input type="text" style="display:none;" value="<?php echo $row['m_fee']?> " name="balance">
                        <input type="text" style="display:none;" value="<?php echo $row['paying_fee']?> " name="paying_fee">
                        <input type="text" style="display:none;" value=" " name="remark">
                        
                         </form>
                        <?php } } ?>
                   




        
                
    
    </div>
</body>
</html>
    