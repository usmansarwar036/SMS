<?php

require_once('auth.php');
$query = "update students set status='active' where sr = $_GET[id]";
$query_run = mysqli_query($connection,$query);
$query2 = "update attendance set status='active' where roll_no = $_GET[id]";
$query_run2 = mysqli_query($connection,$query2);
?>
<script type="text/javascript">
	alert("Trainee Active successfully.");
	window.location.href = "deactive_internies.php";
</script>