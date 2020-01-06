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
 $s=mysql_query("select Segmentno from segment where SegmentName='$seg'");
 $r=mysql_fetch_array($s);
 $_SESSION["segm"]=$r['Segmentno'];
 $find=mysql_query("select distinct Lane from node where Segment='{$_SESSION['segm']}' and Sector='{$_SESSION['sec']}'");
echo "<option>"."Select Lane"."</option>";
 while($row=mysql_fetch_array($find))
 {
  echo "<option>".$row['Lane']."</option>";
 }
 exit;
}
else
 echo "Error";
?>