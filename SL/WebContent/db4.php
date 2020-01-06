<?php
session_start();
if(isset($_POST['get_option']))
{
$_SESSION['dev']=$_POST['get_option'];
}
exit;
?>