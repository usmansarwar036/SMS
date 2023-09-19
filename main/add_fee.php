<?php 
include 'auth.php';
?>


<?php
	$number1 = $_POST['balance'];
	$number1 = (int)$number1;
	$number2 = $_POST['paying_fee'];
	$number2 = (int)$number2;
   
	$balance = $number1 - $number2;
	
// 	echo $balance;
	if(isset($_POST['voucher_no'])){
		$v_no = $_POST['voucher_no'];
		$query3 = "delete from voucher where id = $_POST[id]";
		$query_run = mysqli_query($connection,$query3);
	}
	else{
		$v_no = '';
	}
	$t_day = date("Y-m-d");
	$query = "insert into fee values('','$_POST[roll_no]','Fee','$_POST[name]','$v_no','$_POST[class]','$_POST[month]','$_POST[course_fee]','$balance','$_POST[paying_fee]','$_POST[remark]','$t_day')";
	$query_run = mysqli_query($connection,$query); 

	$query2 = "update students set m_fee='$balance' where sr = $_POST[roll_no]";
	$query_run = mysqli_query($connection,$query2);                             

	
    
?>
<script type="text/javascript">
	alert("Fee added successfully.");
	window.location.href = "voucher.php";
</script>