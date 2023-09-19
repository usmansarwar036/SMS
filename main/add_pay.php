<?php 
require_once('auth.php');
?>


<?php
	$t_day = date('Y-m-d');
	$query = "insert into pay values('','$_POST[roll_no]','$_POST[name]','$_POST[designation]','$_POST[class]','$_POST[total_pay]','$_POST[ballance]','$_POST[month]','$_POST[remark]','$t_day')";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Pay added successfully.");
	window.location.href = "employee.php";
</script>