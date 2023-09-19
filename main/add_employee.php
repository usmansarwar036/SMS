<?php 
require_once('auth.php');
?>


<?php
//	$connection = mysqli_connect("localhost","root","");
//	$db = mysqli_select_db($connection,"model");
	$query = "insert into employee values('','$_POST[name]','$_POST[cnic]','$_POST[designation]','$_POST[class]')";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Employee added successfully.");
	window.location.href = "employee.php";
</script>