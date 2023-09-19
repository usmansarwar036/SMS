<?php 
require_once('auth.php');
?>


<?php
// 	$connection = mysqli_connect("localhost","u364941293_accounts","Nazimaltaf99");
// 	$db = mysqli_select_db($connection,"u364941293_accounts");
    $query = "insert into user values('','$_POST[adminname]','admin','$_POST[name]','$_POST[password]')";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Admin added successfully.");
	window.location.href = "admin.php";
</script>