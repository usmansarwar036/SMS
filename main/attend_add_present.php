<?php

	include 'auth.php';



		$query = "update attendance set out_time = '$_POST[out_time]' where roll_no = $_POST[roll_no] and date = '$_POST[date]'";
		$query_run = mysqli_query($connection,$query);


		$query2 = "delete from come_time where id = $_POST[id]";
		$query_run2 = mysqli_query($connection,$query2);

		header("Location: attend_out_time.php");

 ?>
