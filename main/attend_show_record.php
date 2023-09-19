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
                        <li><a href="expensive.php"><i class="icon-money icon-2x"></i>Expenses</a></li>
                        <li><a href="admin.php"><i class="icon-user icon-2x"></i>Admin</a></li>
                        <li><a href="employee.php"><i class="icon-user icon-2x"></i>Employees</a></li>
                        <li><a  href="Internies.php"><i class="icon-group icon-2x"></i>Trainee</a></li>
                        <li ><a  href="worker.php"><i class="icon-group icon-2x"></i>Worker</a></li>
                
                </ul>             
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span10">

	<div class="container-fluid my-10" >
    <div id="show_record">
        
        <!-- show Record -->
        <?php
				if(isset($_POST['c_r']))
            { ?>
            <center>
                <h1>
                    Custum Record
                </h1>
                <h3>Select Class to Search specific Class</h3>
                <br>
                <form action="" method="post">
                    <b>Select Date From </b><input required type="date" name="from_date" id=""><b> to </b><input type="date" name="to_date" id="" required><br>
                    <span> Select Class: </span>
                    <select style="margin: 0;" name="class"   style='outline: none; '>
                        <option disabled selected value="">Select Course</option>
                        <?php
                            $name = "";
                            $query4 = "select * from course";
                            $query_run4 = mysqli_query($connection,$query4);
                            while($row1 = mysqli_fetch_array($query_run4))
                            {       
                        ?>
                        <option value="<?php echo $row1[1];?>"><?php echo $row1[1];?></option>
                        <?php }?>
                    </select>
                    <input type="submit" class='i_btn' name="submit_date" value="Search">

                </form><br><br>
                
            </center>
                <?php } ?>

        

            <!-- Custum class Record -->
            
   		<?php
                        if(isset($_POST['submit_date'])){
                        if(isset($_POST['class']))
                        {
                       ?>

                        <center>
                            <h1><?php echo $_POST['class'] ?></h1>
                            <h2>Custum Record form <?php echo $_POST['from_date'].' to '.$_POST['to_date'] ?></h2>
                        <h3>Presents</h3>
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
							<tr style="background: blue; color: white;">
							    <th class='td'><b>Sr</b></th>
								<th class="td s_id" ><b>ID</b></th>
								<th class="td " ><b>Date</b></th>
								<th class="td " ><b>Name</b></th>
								<th class="td " ><b>In_Time</b></th>
								<th class="td " ><b>Out-Time</b></th>
								<th class="td " ><b>Status</b></th>
							</tr>
						
                    <?php 
                        $sr =0;
                        $query = "select * from attendance where class = '$_POST[class]' and status = 'active' and date between '$_POST[from_date]' and '$_POST[to_date]' ";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            
                            if($row['p_a']=='present'){
                    ?>
                        
                                    <tr>
                                        <td class='td'><?php $sr = $sr + 1; echo $sr; ?></td>
                                        <td class="td" ><?php echo $row['roll_no']?></td>    
                                        <td class="td" style=''><?php echo $row['date']?></td>
                                        <td class="td" style=''><?php echo $row['name']?></td>
                                        <td class="td" style=''><?php echo $row['in_time']?></td>
                                        <td class="td" style=''><?php echo $row['out_time']?></td>
                                        <td class="td" style=''><?php echo ucfirst($row['p_a']);?></td>
                                    </tr>
                              
                             <?php } }?>  </table>
                        </center>
                        <center>
                        <h3>Absents</h3>
						<table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
							<tr style="background: blue; color: white;">
							     <th class='td'><b>Sr</b></th>
                                <th class="td s_id" ><b>ID</b></th>
								<th class="td " ><b>Date</b></th>
								<th class="td " ><b>Name</b></th>
								<th class="td " ><b>Status</b></th>					
							</tr>
						
                        <?php
                        $sr =0;
                        $query = "select * from attendance where class = '$_POST[class]' and status = 'active' and date between '$_POST[from_date]' and '$_POST[to_date]'";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            if($row['p_a']=='absent'){
                        ?>
                            
                                    <tr>
                                        <td class='td'><?php $sr = $sr + 1; echo $sr; ?></td>
                                        <td class="td" ><?php echo $row['roll_no']?></td>    
                                        <td class="td" style=''><?php echo $row['date']?></td>
                                        <td class="td" style=''><?php echo $row['name']?></td>
                                        <td class="td" style=''><?php echo ucfirst($row['p_a']);?></td>
                                    </tr>
                               
                             <?php } }?> </table>
                            </center>



                                <!--  leave -->
                                <center>
                        <h3>Leaves</h3>
                        <table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
                            <tr style="background: blue; color: white;">
                                 <th class='td'><b>Sr</b></th>
                                <th class="td s_id" ><b>ID</b></th>
                                <th class="td " ><b>Date</b></th>
                                <th class="td " ><b>Name</b></th>
                                <th class="td " ><b>Status</b></th>                 
                            </tr>
                        
                        <?php
                        $sr =0;
                        $query = "select * from attendance where class = '$_POST[class]' and status = 'active' and date between '$_POST[from_date]' and '$_POST[to_date]'";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            if($row['p_a']=='leave '){
                        ?>
                            
                                    <tr>
                                        <td class='td'><?php $sr = $sr + 1; echo $sr; ?></td>
                                        <td class="td" ><?php echo $row['roll_no']?></td>    
                                        <td class="td" style=''><?php echo $row['date']?></td>
                                        <td class="td" style=''><?php echo $row['name']?></td>
                                        <td class="td" style=''><?php echo ucfirst($row['p_a']);?></td>
                                    </tr>
                               
                             <?php } }?> </table>
                            </center>




                        </section>
                            <?php
                        } 

                       
                                               
        ?>


        <!-- show All classes record -->
            
        <?php
                    
                    if(!isset($_POST['class']))
                    {
                       ?>

                        <center>
                        <h3>Presents</h3>
                        <table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
                            <tr style="background: blue; color: white;">
                                <th class='td'><b>Sr</b></th>
                                <th class="td s_id" ><b>ID</b></th>
                                <th class="td " ><b>Date</b></th>
                                <th class="td " ><b>Name</b></th>
                                <th class="td " ><b>Class</b></th>
                                <th class="td " ><b>In_Time</b></th>
                                <th class="td " ><b>Out-Time</b></th>
                                <th class="td " ><b>Status</b></th>
                            </tr>
                        
                    <?php 
                        $sr =0;
                        $query = "select * from attendance where status = 'active' and date between '$_POST[from_date]' and '$_POST[to_date]' order by class ";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            
                            if($row['p_a']=='present'){
                    ?>
                        
                                    <tr>
                                        <td class='td'><?php $sr = $sr + 1; echo $sr; ?></td>
                                        <td class="td" ><?php echo $row['roll_no']?></td>    
                                        <td class="td" style=''><?php echo $row['date']?></td>
                                        <td class="td" style=''><?php echo $row['name']?></td>
                                        <td class="td" style=''><?php echo $row['class']?></td>
                                        <td class="td" style=''><?php echo $row['in_time']?></td>
                                        <td class="td" style=''><?php echo $row['out_time']?></td>
                                        <td class="td" style=''><?php echo ucfirst($row['p_a']);?></td>
                                    </tr>
                              
                             <?php } }?>  </table>
                        </center>
                        <center>
                        <h3>Absents</h3>
                        <table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
                            <tr style="background: blue; color: white;">
                                 <th class='td'><b>Sr</b></th>
                                <th class="td s_id" ><b>ID</b></th>
                                <th class="td " ><b>Date</b></th>
                                <th class="td " ><b>Name</b></th>
                                <th class="td " ><b>Class</b></th>
                                <th class="td " ><b>Status</b></th>                 
                            </tr>
                        
                        <?php
                        $sr =0;
                        $query = "select * from attendance where status = 'active' and date between '$_POST[from_date]' and '$_POST[to_date]' order by class";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            if($row['p_a']=='absent'){
                        ?>
                            
                                    <tr>
                                        <td class='td'><?php $sr = $sr + 1; echo $sr; ?></td>
                                        <td class="td" ><?php echo $row['roll_no']?></td>    
                                        <td class="td" style=''><?php echo $row['date']?></td>
                                        <td class="td" style=''><?php echo $row['name']?></td>
                                        <td class="td" style=''><?php echo $row['class']?></td>
                                        <td class="td" style=''><?php echo ucfirst($row['p_a']);?></td>
                                    </tr>
                               
                             <?php } }?> </table>
                            </center>



                                <!--  leave -->
                                <center>
                        <h3>Leaves</h3>
                        <table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:935px;">
                            <tr style="background: blue; color: white;">
                                 <th class='td'><b>Sr</b></th>
                                <th class="td s_id" ><b>ID</b></th>
                                <th class="td " ><b>Date</b></th>
                                <th class="td " ><b>Name</b></th>
                                <th class="td " ><b>Class</b></th>
                                <th class="td " ><b>Status</b></th>                 
                            </tr>
                        
                        <?php
                        $sr =0;
                        $query = "select * from attendance where status = 'active' and date between '$_POST[from_date]' and '$_POST[to_date]' order by class";
                        $query_run = mysqli_query($connection,$query);
                        while ($row = mysqli_fetch_assoc($query_run)) 
                        {
                            if($row['p_a']=='leave '){
                        ?>
                            
                                    <tr>
                                        <td class='td'><?php $sr = $sr + 1; echo $sr; ?></td>
                                        <td class="td" ><?php echo $row['roll_no']?></td>    
                                        <td class="td" style=''><?php echo $row['date']?></td>
                                        <td class="td" style=''><?php echo $row['name']?></td>
                                        <td class="td" style=''><?php echo $row['class']?></td>
                                        <td class="td" style=''><?php echo ucfirst($row['p_a']);?></td>
                                    </tr>
                               
                             <?php } }?> </table>
                            </center>




                        </section>
                            <?php
                       
                            }   
                            }                
        ?>
        



        <!-- show Attendance -->
        <?php
                if(isset($_POST['a_p']))
            { ?>
            <center>
                <h1>
                    Attendance %
                </h1>
                <form action="" method="post">
                    <b>Select Date From</b><input type="date" name="from_date" id=""><b>to</b><input type="date" name="to_date" id=""><br>
                    <span> Class: </span>
                    <select style="margin: 0;" name="class"  required style='outline: none; '>
                        <option disabled selected value="">Select Course</option>
                        <?php
                            $name = "";
                            $query4 = "select * from course";
                            $query_run4 = mysqli_query($connection,$query4);
                            while($row1 = mysqli_fetch_array($query_run4))
                            {       
                        ?>
                        <option value="<?php echo $row1[1];?>"><?php echo $row1[1];?></option>
                        <?php }?>
                    </select>
                    <input type="submit" class='i_btn' name="submit_d" value="Search">

                </form><br><br>
                
            </center>
                <?php } 

            if(isset($_POST['submit_d']))
                    {
                        $datetime1 = date("d-m-Y", strtotime($_POST['from_date']));
                        $datetime2 = date("d-m-Y", strtotime($_POST['to_date']));
                        $date1=date_create($datetime1);
                        $date2=date_create($datetime2);
                        $diff=date_diff($date1,$date2);
                        $diff = $diff->format("%R%a");
                        if ($diff == 0) {
                            $diff = 1;
                            
                        }
                       

                       ?>
                    <center>
                        <h1>Attendance %</h1>
                    



                    <table class="table" style="width: 50%;">
                        <tr style="background: blue; color: white;">
                            <th>ID</th>
                            <th>Name</th>
                            <th>Present %</th>
                        </tr>
                        <?php 

                            $sr =0;
                            $query = "select * from students where status = 'active' and class = '$_POST[class]'";
                            $query_run = mysqli_query($connection,$query);
                            while ($row = mysqli_fetch_assoc($query_run)) 
                            { 
                         ?>
                        <tr>
                            <td> <?php $sr = $sr +1; echo $sr; ?></td>
                            <td><?php echo $row['sr']?></td>
                            <td><?php echo $row['name']?></td>
                            <td><?php
                                    $roll_no_ind = $row['sr'];
                                    $i = 0;
                                    $querys = "select * from attendance where roll_no = $roll_no_ind and status = 'active' and p_a ='present' and date between '$_POST[from_date]' and '$_POST[to_date]'";
                        $query_run3 = mysqli_query($connection,$querys);
                        while ($row = mysqli_fetch_assoc($query_run3)) 
                        {
                                $i = $i + 1;
                        }
                        $n_attend = ($i/$diff)*100;
                        echo bcadd(0, $n_attend, 2);
                        echo ' %';


              ?></td>
                        </tr>
                        <?php } ?>
                    </table>
                    </center>
                    <?php 
                        }}
                     ?>
    </div>
</body>
</html>
    