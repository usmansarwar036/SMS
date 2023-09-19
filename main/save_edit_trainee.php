<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['id'];
// query
$file_name  = strtolower($_FILES['file']['name']);
$file_ext = substr($file_name, strrpos($file_name, '.'));
$prefix = 'your_site_name_'.md5(time()*rand(1, 9999));
$file_name_new = $prefix.$file_ext;
$path = '../uploads/'.$file_name_new;
if(@move_uploaded_file($_FILES['file']['tmp_name'], $path)) {
    echo "Have a good day!";
    $sql = "update students set name='$_POST[name]',cnic='$_POST[cnic]',dob='$_POST[dob]',f_name='$_POST[f_name]',class='$_POST[class]',adm_date='$_POST[adm_date]',end_date='$_POST[end_date]',cell='$_POST[cell]',fee='$_POST[fee]',m_fee='$_POST[m_fee]',monthly_fee='$_POST[monthly_fee]',refr='$_POST[refr]',old_class='$_POST[old_class]', file='$file_name_new'  where id = :id";
    
    
}

else{
    $sql = "update students set name='$_POST[name]',cnic='$_POST[cnic]',dob='$_POST[dob]',f_name='$_POST[f_name]',class='$_POST[class]',adm_date='$_POST[adm_date]',end_date='$_POST[end_date]',cell='$_POST[cell]',fee='$_POST[fee]',m_fee='$_POST[m_fee]',monthly_fee='$_POST[monthly_fee]',refr='$_POST[refr]',old_class='$_POST[old_class]'  where id = :id";
}
$q = $db->prepare($sql);
$q->execute(array(':id'=>$id));
header("location: trainee.php");

?>