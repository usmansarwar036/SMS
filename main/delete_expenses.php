
<?php 
require_once('auth.php');
?>


<?php
	$to_date = $_POST['to_date'];
	$from_date = $_POST['from_date'];
	$query = "delete from expensive where id = $_POST[id]";
	$query_run = mysqli_query($connection,$query);
	header("location: show_expenses_record.php?sfte=''&to_date=$to_date&from_date=$from_date");
    
?>
