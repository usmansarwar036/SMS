<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Add Voucher</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body style="height:auto;">
	<input type="button" onclick="window.location.href = 'voucher.php'" style='float:right;' class="btn btn-danger" value="Back" onclick="" name="">
			<input type="submit" onclick=" window.print();" style='float:right;'class="btn btn-success" value='Print'  name=""><br>
	<?php
		include 'auth.php';
                                        
                                            $query = "select * from students where class = '$_GET[class]'";
                                            $query_run = mysqli_query($connection,$query);
                                            while ($row = mysqli_fetch_assoc($query_run)) 
                                            
                                            {
                                        ?>
	<div >
		<br><br>
		<center>
			<h1><u>E-Tech Software House</u></h1>
		</center>
		<div style="margin: auto; width: 400px; border: 3px solid black; padding: 6px 20px;" >
			<p><b>Date:</b> <?php echo date("l"). " ".date("d-m-Y") ; ?></p>
			<p><b>Class : </b><?php  echo $_GET['class'] ?></p>
			<hr style="height: 2px;background: black;">
			<p><b>Voucher No:</b> <?php  echo $_GET['month'].'-'.$row['sr'] ?></p>
			<p><b>Roll No:</b> <?php  echo $row['sr'] ?></p>
			<p><b>Name:</b> <?php  echo $row['name'] ?></p>
			<p><b>Month:</b> <?php  echo $_GET['month'] ?></p>
			<p><b>Total Fee: Rs.</b> <?php  echo $row['fee'] ?></p>
			<p><b>Remaining Fee: Rs.</b> <?php  echo $row['m_fee'] - $_POST['paying_fee'] ?></p>
			<p><b>Paying Fee: Rs.</b> <?php  echo $row['monthly_fee'] ?></p>
            <p style="font-family:Ravie"><h3>Fee Paid</h3> <h6>*It is computerized Reciept so no Sign/Stamp Required.<br>
			*Not Valid For Court.</h6></p>
			<br><br>
			
		</div>
	</div>
	<?php 	
			$balance = $row['m_fee'];  
			$sr = $row['sr'];
			$name = $row['name'];
			$fee = $row['fee'];
			$monthly_fee = $row['monthly_fee'];
			$voucher_no =  $_GET['month'].'-'.$row['sr'];
			$date = date("Y-m-d");
			$query2 = "insert into voucher values('','$sr','$voucher_no','$name','$_GET[class]','$fee','$monthly_fee','$balance','$_GET[month]','$date')";
			$query_run2 = mysqli_query($connection,$query2);

	 ?>
<?php } ?>
	<hr>
</body>
</html>