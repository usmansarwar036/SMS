<?php 
require_once('auth.php');
?>

<?php
// 	$connection = mysqli_connect("localhost","root","");
// 	$db = mysqli_select_db($connection,"model");
	$query = "insert into head values('','$_POST[head]','$_POST[charges]')";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Head added successfully.");
	window.location.href = "expensive.php";
</script>