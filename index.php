<?php
	//Start session
	session_start();
	
	//Unset the variables stored in session
	unset($_SESSION['SESS_MEMBER_ID']);
	unset($_SESSION['SESS_FIRST_NAME']);
	unset($_SESSION['SESS_LAST_NAME']);
?>
<html>
<head>
    
<title>
E-Tech :: Students Information System
</title>
    <link rel="shortcut icon" href="main/images/pos.jpg">
    <!--<link rel="preload" as="style" href="main/css/bootstrap.css">-->
    <link rel="stylesheet"  href="main/css/bootstrap.css?v=<?php echo time(); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="main/css/DT_bootstrap.css">
  
  <link rel="stylesheet" href="main/css/font-awesome.min.css">
    <style type="text/css">
      html{
        position:relative;
      }
      body {
        padding-top: 60px;
        padding-bottom: 40px;
        position:relative;
      }
      html::before{
          content:'';
          background : url('bg.jpg') center center/cover;
          height: 100%;
          width: 100%;
          position: absolute;
          
      }
      
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="main/css/bootstrap-responsive.css" rel="stylesheet">

<link href="style.css" media="screen" rel="stylesheet" type="text/css" />
</head>
<body>
    
<div style='justify-content: center;align-items: flex-end;width:100%;height:100%; display:flex; flex-direction:column;'>
<div id="login" >
<?php
if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
	foreach($_SESSION['ERRMSG_ARR'] as $msg) {
		echo '<div style="color: red; text-align: center;">',$msg,'</div><br>'; 
	}
	unset($_SESSION['ERRMSG_ARR']);
}
?>
<form action="login.php" method="post">

			

		
<div class="input-prepend">
		<input style="height:40px;" type="text" name="username" Placeholder="Username" required/><br>
</div>
<div class="input-prepend">
	<input type="password" style="height:40px;" name="password" Placeholder="Password" required/><br>
		</div>
		<div class="qwe">
		 <button class="btn btn-large btn-primary btn-block pull-right" href="dashboard.html" type="submit"><i class="icon-signin icon-large"></i> Login</button>
</div>
		 </form>
</div>
<font style=" font:bold 44px 'Aleo'; color:#fff;position: absolute;bottom: 10%;right: 15%;"><center>E-Tech<br><span style='font-size:30px'>Student Information System</span></center></font>

</div>
</div>
</div>
</body>
</html>