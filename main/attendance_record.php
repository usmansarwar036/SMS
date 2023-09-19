<?php
		include 'auth.php';
	  	 $date = date('Y-m-d');
	  	 $class= $_GET['class'];
	  	 // only change this
	  	 if(isset($_GET['add_present']))
	  	 {
			
			$query = "insert into come_time values('','$_GET[id]','$_GET[name]','$_GET[class]','$_GET[add_present]','$date')";
			$query_run = mysqli_query($connection,$query);

			$query2 = "insert into attendance values('','$_GET[id]','$_GET[name]','$_GET[class]','$date','$_GET[add_present]', '','present','active')";
			$query_run2 = mysqli_query($connection,$query2);

			$query4 = "update students set d='$date' where sr = $_GET[id]";
			$query_run4 = mysqli_query($connection,$query4);
			
		}
		else if(isset($_GET['add_absent']))
	  	 {
			
			$query = "insert into attendance values('','$_GET[id]','$_GET[name]','$_GET[class]','$date','','','absent','active')";
			$query_run = mysqli_query($connection,$query);

			$query4 = "update students set d='$date' where sr = $_GET[id]";
			$query_run4 = mysqli_query($connection,$query4);

		}
		else if(isset($_GET['leave']))
	  	 {
			
			$query = "insert into attendance values('','$_GET[id]','$_GET[name]','$_GET[class]','$date','','','leave','active')";
			$query_run = mysqli_query($connection,$query);

			$query4 = "update students set d='$date' where sr = $_GET[id]";
			$query_run4 = mysqli_query($connection,$query4);

		}

		header("Location: make_attendance.php?class=$class");

	?>
