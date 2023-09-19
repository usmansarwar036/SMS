<?php 
require_once('auth.php');
?>

<?php
// 	$connection = mysqli_connect("localhost","root","");
// 	$db = mysqli_select_db($connection,"e_tech_software_house");
	$query = "delete from course where id = $_POST[id]";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Course deleted successfully.");
	window.location.href = "course.php";
</script>
