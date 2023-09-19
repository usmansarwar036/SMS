<?php 

    include 'auth.php';
	$query = "insert into fee values('','','Extra','$_POST[name]','','','','','','$_POST[amount]','$_POST[remark]','$_POST[date]')";
	$query_run = mysqli_query($connection,$query); 
?>
<script type="text/javascript">
	alert("Income added successfully.");
	window.location.href = "expenses.php";
</script>