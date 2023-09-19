<!DOCTYPE html>
<html>
<head>
	<title>Expenses</title>
	<meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
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
if($position=='admin') {
?>	
					<div class="container-fluid">
					<div>
					<a style="float: right; margin: 3px;"><input class="btn btn-success" type="submit" value="print" onclick="window.print();" ></a>
					<a style="float: right; margin:3px;" href="expenses.php"><input class="btn btn-primary" type="submit" value="back" ></a></div><br><br>
 					<?php

 					   if(isset($_POST['from_date'])){
                            $from_date = $_POST['from_date'];
                            $to_date = $_POST['to_date'];
                       }
                       elseif (isset($_GET['from_date'])) {
                            $from_date = $_GET['from_date'];
                            $to_date = $_GET['to_date'];
                            // $from_date = strtotime($from_date);
                            // $from_date = date("Y-m-d", $from_date);
                            // $to_date = strtotime($to_date);
                            // $to_date = date("Y-m-d", $to_date);


                            // $from_date = $_GET['from_date'];
                            // $from_date = strtotime($from_date);
                            // $from_date = date("Y-m-d", $from_date);
                        // echo $_GET['from_date'].$_GET['to_date'];
                            
                       }

 						if(isset($_POST['show_from_to_expenses']) || isset($_GET['sfte']))
                        {
                        	$expenses = 0;
                            ?>
                         <center>
                        <h3>Expenses from <?php echo  $from_date.' to '.$to_date ?></h3>
                        <table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:80%;">
                            <tr>
                                
                                <th class="td "><b>Name</b></th>
                                <th class="td "><b>Amount</b></th>
                                <th class="td "><b>Date</b></th>
                                <th class="td "><b>Remarks</b></th>
                                <th class="td "><b>delete</b></th>
                            </tr>
                        
                        </center>
                        <?php
                            
                            $query = "select * from expensive where date between '$from_date' and '$to_date'";
                            $query_run = mysqli_query($connection,$query);
                            while ($row = mysqli_fetch_assoc($query_run)) 
                            {
                            	 
                        		$expenses = $expenses + (int)$row['amount'];


                                ?>
                    <center>
                    <form action="delete_expenses.php" method="post">
                            <tr>
                                <td class="td"><?php echo $row['name']?></td>
                                <td class="td"><?php echo $row['amount']?></td>
                                <td class="td"><?php echo $row['date']?></td>
                                <td class="td"><?php echo $row['remark']?></td>
                                <td class="td">
                                    <input type="submit" value="Delete" class='i_btn'>
                                    <input  name='id' type="hidden" value="<?php echo $row['id']?>">
                                    <input  name='from_date' type="hidden" value="<?php echo $from_date?>">
                                    <input  name='to_date' type="hidden" value="<?php echo $to_date?>">
                                </td>
                            </tr>
                    </form>
                
                <?php
                            } ?>
                            </table>
                           <div style="display: inline-block;margin: 10px; background: green;padding: 5px;color: white;"> Total Amount : <?php echo $expenses; ?></div>
                        </center>

                <?php        }
                if(isset($_POST['show_from_to_income']))
                        {
                        	$income = 0; ?>

                        	<center>
                        <h3>Income from <?php echo  $from_date.' to '.$to_date ?></h3>
                        <table id='all_student_table' style="border-collapse: collapse;border: 1px solid black; width:80%;">
                            <tr>
                                
                                <th class="td "><b>Name</b></th>
                                <th class="td "><b>Amount</b></th>
                                <th class="td "><b>Date</b></th>
                                <th class="td "><b>Remarks</b></th>
                            </tr>
                        
                        </center>
                        <?php
                            $query = "select * from fee where head = 'Extra' and date between '$from_date' and '$to_date'";
                            $query_run = mysqli_query($connection,$query);
                            while ($row = mysqli_fetch_assoc($query_run)) 
                            {
                            	 
                        		$income = $income + (int)$row['paying_fee'];


                                ?>
                    <center>
                            <tr>
                                <td class="td"><?php echo $row['name']?></td>
                                <td class="td"><?php echo $row['paying_fee']?></td>
                                <td class="td"><?php echo $row['date']?></td>
                                <td class="td"><?php echo $row['remark']?></td>
                            </tr>
                   
                
                <?php
                            } ?>
                            </table>
                           <div style="display: inline-block;margin: 10px; background: green;padding: 5px;color: white;"> Total Amount : <?php echo $income ; ?></div>
                        </center>
		



		



<?php } ?>

	<?php } ?></div>
</body>
</html>