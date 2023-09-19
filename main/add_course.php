<?php 
require_once('auth.php');
?>



<?php
//	$connection = mysqli_connect("localhost","root","");
//	$db = mysqli_select_db($connection,"model");
	$query = "insert into course values('','$_POST[course]')";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Course added successfully.");
	window.location.href = "course.php";
</script>