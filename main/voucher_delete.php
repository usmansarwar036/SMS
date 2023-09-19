<?php 
require_once('auth.php');
?>

<?php
//	$connection = mysqli_connect("localhost","root","");
//	$db = mysqli_select_db($connection,"model");
	$query = "delete from voucher where id = $_GET[id]";
	$query_run = mysqli_query($connection,$query);
    
?>
<script type="text/javascript">
	alert("Voucher deleted successfully.");
	window.location.href = "voucher.php";
</script>