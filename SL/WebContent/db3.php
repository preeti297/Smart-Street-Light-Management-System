<?php
session_start();
//if(isset($_POST['get_option']))
//{
 $host = 'localhost';
 $user = 'root';
 $pass = '';
 mysql_connect($host, $user, $pass);
 mysql_select_db('smartstreet');
 $seg = $_POST['get_option'];
 echo "<option>"."Select Device"."</option>";
 $_SESSION['rod']=$seg;
 $find=mysql_query("select Device from node where Sector='{$_SESSION['sec']}' and Segment='{$_SESSION['segm']}' and Lane='{$_SESSION['lan']}' and Road='$seg'"); 
 while($row=mysql_fetch_array($find))
 {
  echo "<option>".$row['Device']."</option>";
 }
 exit;
//}
//else
 //echo "Error";
?>