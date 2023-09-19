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
*{
    font-family: system-ui;

}
tr{
    font-size: 18px;
}
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
					<a style="position: fixed;right: 22px;margin: 3px;"><input class="btn btn-success" type="submit" value="print" onclick="window.print();" ></a>
					<a style="position: fixed;right: 85px;margin:3px;" href="expenses.php"><input class="btn btn-primary" type="submit" value="back" ></a></div><br><br>
 					<?php
 					

 						if(isset($_POST['show_from_to_report']))
                        {
                        	
                          
                            $balance = 0;
                            $pay = 0;
                            $fee = 0;
                            $debit = 0;
                            $credit = 0;
                            ?>
                         <center>
                            <h4>Profit & Loss Report</h4>
                            <?php
                            
                            $from_date = $_POST['from_date'];
                            $from_date = date('Y-m', strtotime($from_date));
                            $to_date = $_POST['to_date'];
                            $to_date = date('Y-m', strtotime($to_date));
                            ?>
                            <h4> from <?php echo  $from_date.' to '.$to_date ?></h4>
                            <!-- income -->
                            <table class="table  table-bordered" style="width: 60%; margin: 0; border: 3px solid; border-collapse: collapse;border-bottom:none;">

                                
                                <tr style="background: blue; color:white;">
                                    <td style="   ">Date</td>
                                    <td style=" text-align: center;  ">Details</td>
                                    <td style=" text-align: center; ">Credit</td>
                                    <td style=" text-align: center;  ">Debit</td>
                                    <td style=" text-align: center;  ">Balance</td>
                                </tr>
                                
                                
                                        <?php 
                                        
                                        $from_month = $_POST['from_date'];
                                        $from_month = date('Y-m', strtotime($from_month));
                                        $to_month = $_POST['to_date'];
                                        $to_month = date('Y-m', strtotime($to_month));
                                        $query = "SELECT month, sum(paying_fee) as total FROM fee where head = 'Fee' and month between '$from_month' and '$to_month' GROUP BY month ;";
                                        $query_run = mysqli_query($connection,$query);
                                        while ($row = mysqli_fetch_assoc($query_run)){
                                             $fee = (int)$row['total'] + $fee ;
                                             $balance = $balance + $fee;
                                            ?>
                                    <tr>    
                                    <td><?php echo $row['month'] ?></td>
                                    <td>This month fee</td>
                                    <td style='color:green;'><?php echo 'Rs. '.$row['total'] ?></td>
                                    <td ></td>
                                    <td ><?php echo 'Rs. '.$balance ?></td>
                                     </tr>       
                                    
                                    <?php  } ?>
                                
                                
                                
                               
                                    <?php
                                    $query2 = "select * from fee where head = 'Extra' and date between '$_POST[from_date]' and '$_POST[to_date]'";
                                    $query_run2 = mysqli_query($connection,$query2);
                                    while ($row2 = mysqli_fetch_assoc($query_run2)) 
                                    { $balance =  (int)$row2['paying_fee'] + $balance ;
                                        
                                     ?>
                                <tr>
                                        <td style="  " ><?php echo $row2['date']?></td>
                                        <td style="  " ><?php echo $row2['name']?></td>
                                        <td style="  color:green;  " >Rs. <?php echo $row2['paying_fee']?></td>
                                        <td style="  " ></td> 
                                        <td style="  " >Rs. <?php  echo $balance?></td>
                               </tr> <?php } ?>
                                <tr>
                                    <th style="  " ></th>
                                    <?php 
                                        $query3 = "select * from pay where date between '$_POST[from_date]' and '$_POST[to_date]'";
                                        $query_run3 = mysqli_query($connection,$query3);
                                        while ($row3 = mysqli_fetch_assoc($query_run3)){
                                            $pay=   (int)$row3['total_pay'] + $pay;
                                            
                                        }
                                    ?>
                                    <td style="  "></td>
                                    <td style="  "></td>
                                    <td style="  " > </td> 
                                    <td style="  "></td>


                                </tr>
                                
                                    <?php
                                    $query4 = "select * from expensive where date between '$_POST[from_date]' and '$_POST[to_date]'";
                                    $query_run4 = mysqli_query($connection,$query4);
                                    while ($row4 = mysqli_fetch_assoc($query_run4)) 
                                    { 
                                        $balance =  $balance - (int)$row4['amount'] ;
                                     ?>

                                <tr>
                                        <td   style="  "><?php echo $row4['date']?></td>
                                        <td   style="  "><?php echo $row4['name']?></td>
                                        <td   style="  "></td> 
                                        <td   style=" color:red; ">Rs. <?php echo $row4['amount']?></td>
                                        <td   style="  ">Rs. <?php  echo $balance?></td>
                                <?php } ?>
                               </tr>
                               <tr style="border: 2px solid ">
                                   <td style=""></td>
                                   <td style=""></td>

                                   <?php
                                    $query6 = "select * from fee where head = 'Extra' and date between '$_POST[from_date]' and '$_POST[to_date]'";
                                    $query_run6 = mysqli_query($connection,$query6);
                                    while ($row6 = mysqli_fetch_assoc($query_run6)) 
                                    { $credit =  (int)$row6['paying_fee'] + $credit ; } ?>

                                   <th style=" color:green; ">Rs. <?php echo $credit+$fee; ?></th>

                                    <?php
                                    $query5 = "select * from expensive where date between '$_POST[from_date]' and '$_POST[to_date]'";
                                    $query_run5 = mysqli_query($connection,$query5);
                                    while ($row5 = mysqli_fetch_assoc($query_run5)) 
                                    { 
                                        $debit =  $debit + (int)$row5['amount'] ; }
                                     ?>
                                   
                                   <th style=" color:red; ">Rs. <?php echo $debit+$pay; ?></th>
                                   <th style=" color:#00ff00; ">Rs. <?php  echo $balance?></th>
                               </tr>
                               
                               
                               
                               
                               
                               
                               </table>
                               <br>
                            <table class="table  table-bordered" style="width: 60%; margin: 0; border: 3px solid green; border-collapse: collapse;">   
                               <tr style="border: 2px solid green">
                                   <td  style="border: none"></td>
                                   <th  style="border: none; color:green;">Total Profit</th>
                                   <td style="border: none; color:green;"></td>
                                   <th style="border: none; color:#00ff00;">Rs. <?php echo $balance; ?></th>
                                   <td style="border: none; color:green;"></td>
                               </tr>

                            </table>
                            
                           </center>
                        

                
<?php } ?>

	<?php } ?></div>
</body>
</html>
