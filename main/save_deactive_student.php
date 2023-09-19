
<?php

require_once('auth.php');
$query = "update students set status='deactive' where sr = $_GET[id]";
$query_run = mysqli_query($connection,$query);
$query2 = "update attendance set status='deactive' where roll_no = $_GET[id]";
$query_run2 = mysqli_query($connection,$query2);
?>
<script type="text/javascript">
	alert("Student Deactived successfully.");
	window.location.href = "students.php";
</script>