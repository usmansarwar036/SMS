<?php 
require_once('auth.php');
?>

<?php
// 	$connection = mysqli_connect("localhost","root","");
// 	$db = mysqli_select_db($connection,"model");
	$query = "delete from head where id = $_POST[id]";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Head deleted successfully.");
	window.location.href = "expenses.php";
</script>
