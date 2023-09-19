<?php 
require_once('auth.php');
?>

<?php
//	$connection = mysqli_connect("localhost","root","");
//	$db = mysqli_select_db($connection,"model");
	$query = "insert into expensive values('','$_POST[name]','$_POST[amount]','$_POST[date]','$_POST[remark]')";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Expensive added successfully.");
	window.location.href = "expenses.php";
</script>