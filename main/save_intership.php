<?php
session_start();
include('../connect.php');

// query
  

  $total = $fee +  $cerf_fee + $card_fee;


$file_name  = strtolower($_FILES['file']['name']);
$file_ext = substr($file_name, strrpos($file_name, '.'));
$prefix = 'your_site_name_'.md5(time()*rand(1, 9999));
$file_name_new = $prefix.$file_ext;
$path = '../uploads/'.$file_name_new;


    /* check if the file uploaded successfully */
    if(@move_uploaded_file($_FILES['file']['tmp_name'], $path)) {

  //do your write to the database filename and other details   
$sql = "INSERT INTO students VALUES ('','$_POST[student_id]','$_POST[name]','$_POST[cnic]','$_POST[dob]','$_POST[f_name]','Free intenship','$_POST[skill]','$_POST[adm_date]','','$_POST[cell]','','','','$_POST[refr]',:h,'active','')";
$q = $db->prepare($sql);
$q->execute(array(':h'=>$file_name_new));
header("location: trainee.php");

    }
?>