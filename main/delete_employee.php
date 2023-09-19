<?php 
require_once('auth.php');
?>

<?php
// 	$connection = mysqli_connect("localhost","root","");
// 	$db = mysqli_select_db($connection,"e_tech_software_house");
	$query = "delete from employee where id = $_POST[id]";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Employee deleted successfully.");
	window.location.href = "employee.php";
</script>
