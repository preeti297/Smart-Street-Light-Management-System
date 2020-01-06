<?php
session_start();
if(isset($_POST['get_option']))
{
 $host = 'localhost';
 $user = 'root';
 $pass = '';
 mysql_connect($host, $user, $pass);
 mysql_select_db('smartstreet');
 $seg = $_POST['get_option'];
 $_SESSION["lan"]=$seg;
 $find=mysql_query("select distinct Road from node where Lane='{$_SESSION['lan']}' and Sector='{$_SESSION['sec']}' and Segment='{$_SESSION['segm']}'");
 echo "<option>"."Select Road"."</option>";
 while($row=mysql_fetch_array($find))
 {
  echo "<option>".$row['Road']."</option>";
 }
 exit;
}
else
 echo "Error";
?>