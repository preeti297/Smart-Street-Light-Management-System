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
 $s=mysql_query("Select Number from sector where Name='$seg'");
 $r=mysql_fetch_array($s);
 $_SESSION["sec"]=$r['Number'];
 $find=mysql_query("select distinct SegmentName from segment where Sectorno='{$_SESSION['sec']}'");
 echo "<option>"."Select Segment"."</option>";
 while($row=mysql_fetch_array($find))
 {
  echo "<option>".$row['SegmentName']."</option>";
 }
 exit;
}
else
 echo "Error";
?>