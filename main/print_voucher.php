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
</head><input type="button" onclick="window.location.href = 'fee.php'" style='float:right;' class="btn btn-danger" value="Back" onclick="" name="">
			<input id="printpagebutton" type="submit" onclick=" window.print();" style='float:right;'class="btn btn-success" value='Print'  name=""><br>
			
<body style="height:10px;">
	<div>
		<center>
			<h3><u>E-Tech Software House</u></h3>
		</center>
		<div style="margin: auto; width: 350px; border: 3px solid black; padding: 10px 20px;" >
		    <?php
		    include 'auth.php';	
		    
		    $query = "select * from fee where id = $_GET[id]";
            $query_run = mysqli_query($connection,$query);
            if(!$query_run){
                echo 'new';
            }
            while ($row = mysqli_fetch_assoc($query_run)){
		    ?>
			
			<p><b>Date:</b> <?php echo date('l', strtotime($row['date'])).' '.$row['date']; ; ?></p>
			<p><b>Class : </b><?php  echo $row['class']; ?></p>
			<hr style="height: 2px;background: black;">
			<p><b>Voucher No:</b> <?php  echo $row['voucher_no'] ?></p>
			<p><b>Roll No:</b> <?php  echo $row['roll_no'] ?></p>
			<p><b>Name:</b> <?php  echo $row['name'] ?></p>
			<p><b>Month:</b> <?php  echo $row['month'] ?></p>
			<p><b>Total Fee: Rs.</b> <?php  echo $row['course_fee'] ?></p>
			<p><b>Remaining Fee: Rs.</b> <?php  echo $row['ballance'] ?></p>
			<p><b>Paying Fee: Rs.</b> <?php  echo $row['paying_fee']  ?></p>
			<p style="font-family:Ravie"><h3>Fee Paid</h3> <h6>*It is computerized Reciept so no Sign/Stamp Required.<br>
			*Not Valid For Court.</h6></p>
			<?php } ?>
			
		</div>
	</div>
		






</body>
</html>