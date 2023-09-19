<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript">
    function printpage() {
        //Get the print button and put it into a variable
        var printButton = document.getElementById("printpagebutton");
        //Set the print button visibility to 'hidden' 
        printButton.style.visibility = 'hidden';
        //Print the page content
        window.print()
        //Set the print button to 'visible' again 
        //[Delete this line if you want it to stay hidden after printing]
        printButton.style.visibility = 'visible';
    }
</script>
	<title>Add Student Voucher</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head><input type="button" onclick="window.location.href = 'voucher.php'" style='float:right;' class="btn btn-danger" value="Back" onclick="" name="">
			<input id="printpagebutton" type="submit" onclick=" window.print();" style='float:right;'class="btn btn-success" value='Print'  name=""><br>
			
<body style="height:10px;">
	<div>
		<center>
			<h3><u>E-Tech Software House</u></h3>
		</center>
		<div style="margin: auto; width: 350px; border: 3px solid black; padding: 6px 20px;" >
			
			<p><b>Date:</b> <?php echo date("l"). " ".date("d-m-Y") ; ?></p>
			<p><b>Class : </b><?php  echo $_POST['class'] ?></p>
			<hr style="height: 2px;background: black;">
			<p><b>Voucher No:</b> <?php  echo $_POST['month'].'-'.$_POST['roll_no'] ?></p>
			<p><b>Roll No:</b> <?php  echo $_POST['roll_no'] ?></p>
			<p><b>Name:</b> <?php  echo $_POST['name'] ?></p>
			<p><b>Month:</b> <?php  echo $_POST['month'] ?></p>
			<p><b>Total Fee: Rs.</b> <?php  echo $_POST['course_fee'] ?></p>
			<p><b>Remaining Fee: Rs.</b> <?php  echo $_POST['m_fee'] - $_POST['paying_fee'] ?></p>
			<p><b>Paying Fee: Rs.</b> <?php  echo $_POST['paying_fee']  ?></p>
			<p style="font-family:Ravie"><h3>Fee Paid</h3> <h6>*It is computerized Reciept so no Sign/Stamp Required.<br>
			*Not Valid For Court.</h6></p>
			
			
		</div>
	</div>
		



	<?php 	
			
			$date = date("Y-m-d");
			include 'auth.php';		
			$voucher_no = $_POST['month'].'-'.$_POST['roll_no'];
			$query = "insert into voucher values('','$_POST[roll_no]','$voucher_no','$_POST[name]','$_POST[class]','$_POST[course_fee]','$_POST[paying_fee]','$_POST[m_fee]','$_POST[month]','$date')";
			$query_run = mysqli_query($connection,$query);

	 ?>





</body>
</html>