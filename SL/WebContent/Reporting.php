<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Template Name: Smart Street Light
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart Street Light Control and Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout.css" type="text/css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
body
{
 background-color:#C0C0C0;
 font-family:helvetica;
}
#heading
{
 text-align:center;
 margin-top:150px;
 font-size:30px;
 color:blue;
}
#main
{
margin:0 auto;
}
#select_box
{
 width:350px;
 background-color:#373E46;
 padding:10px;
 height:380px;
 border-radius:5px;
 box-shadow:0px 0px 10px 0px grey;
 margin-left:75px;
 float:left;
 
}
#table_box
{
 width:750px;
 background-color:#373E46;
 padding:10px;
 height:380px;
 border-radius:5px;
 box-shadow:0px 0px 10px 0px grey;
 float : left;
 margin-left:75px;
 
}
select
{
 width:300px;
 height:50px;
 border:1px solid #BDBDBD;
 margin-top:25px;
 padding:10px;
 font-size:20px;
 color:grey;
 border-radius:5px;
}
.button {
  border-radius: 4px;
  background-color:#999966;
  border: none;
  color:white;
  text-align: center;
  font-size: 17px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
function valid(){
var answer=document.getElementById('sb');
 if(answer[answer.selectedIndex].value=="void")
  alert("Select an option"); 
 else
{
 $(document).ready(function(){
        $('#tab').load('output.php');
    });  
}
}
function fetch_select(val)
{
 $.ajax({
 type: "POST",
 url: "db.php",
 data: {
  get_option: val
 },
 
success: function (response) {
  document.getElementById("new_select").innerHTML=response; 
 }
 });
}
function fetch_select1(val)
{
 $.ajax({
 type: "POST",
 url: "db1.php",
 data: {
  get_option: val
 },
 
success: function (response) {
  document.getElementById("new_select1").innerHTML=response; 
 }
 });
}
function fetch_select2(val)
{
 $.ajax({
 type: "POST",
 url: "db2.php",
 data: {
  get_option: val
 },
 
success: function (response) {
  document.getElementById("new_select2").innerHTML=response; 
 }
 });
}
function fetch_select3(val)
{
 $.ajax({
 type: "POST",
 url: "db3.php",
 data: {
  get_option: val
 },
 
success: function (response) {
  document.getElementById("new_select3").innerHTML=response; 
 }
 });
}
function fetch_select4(val)
{
 $.ajax({
 type: "POST",
 url: "db4.php",
 data: {
  get_option: val
 },

success: function(response)
{
 document.getElementById("Submit").innerHTML=response;
}
});
}
</script>

<script type="text/javascript" src="layout/scripts/jquery.nivo.slider.pack.js"></script>

<!--[if lt IE 8]>
<style type="text/css" media="screen">.nivo-controlNav a{float:left;}</style>
<![endif]-->
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div class="fl_left">
      <h1><a href="index.html">Smart Street Light Control and Management</a></h1>
     
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="http://localhost:8030/SL/Home.html">Home</a></li>
        <li><a href="http://localhost:8030/SL/Tracking.html">Tracking</a></li>
        <li class="active"><a href="http://localhost:8030/SL/Reporting.html">Report</a></li>
        <li><a href="LogoutServlet">Logout</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->

<br><br><br>
<div id="main">
<div id="select_box">
 <select id="sb" onchange="fetch_select(this.value);">
  <option value="void">Select sector</option>
  <?php
  $host = 'localhost';
  $user = 'root';
  $pass = '';
  mysql_connect($host, $user, $pass);
  mysql_select_db('smartstreet');

  $select=mysql_query("select Name from sector");
  while($row=mysql_fetch_array($select))
  {
   echo "<option>".$row['Name']."</option>";
  }
 ?>
 </select>

 <select id="new_select" onchange="fetch_select1(this.value);">
 </select>
<select id="new_select1" onchange="fetch_select2(this.value);">
 </select>
<select id="new_select2" onchange="fetch_select3(this.value);">
 </select>
<select id="new_select3" onchange="fetch_select4(this.value);">
 </select>
<br>
<input id="Submit" type="button" onclick="valid()" value="Submit"/> 
</div>  
<div id="table_box"> </div>
</div>
<!-- ####################################################################################################### -->
<!--div class="wrapper col6">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" />
  </div>
</div>-->
</body>
</html>