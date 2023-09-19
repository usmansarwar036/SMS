<?php 
require_once('auth.php');
?>

<?php
//	$connection = mysqli_connect("localhost","root","");
//	$db = mysqli_select_db($connection,"model");
	$query = "delete from user where id = $_POST[id]";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Admin deleted successfully.");
	window.location.href = "admin.php";
</script>
