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
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<script type="text/javascript" src="layout/scripts/jquery.nivo.slider.pack.js"></script>
<style type="text/css" media="screen">
#map-canvas {
    width:560px;
    height:300px;
    margin:90px;
    top:50;
  }
.nivo-controlNav a{
float:left;
}
.event{
display:block;
background: #FFFFFF;
width:380px;
padding:10px;
margin:10px;
overflow:hidden;
text-align:left;
}
#nav {
    line-height:30px;
    background-color:#FFFFFF;
    height:500px;
    width:400px;
    float:left;
    padding:20px;
    margin: 30px; 
}
</style>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
<script>

function initialize() {
  var mapOptions = {
    zoom: 13,
    center: new google.maps.LatLng(17.5399206, 78.3862495)
  };

  var map = new google.maps.Map(document.getElementById('map-canvas'),
    mapOptions);
<%

java.sql.Connection cn;
java.sql.Statement st;
java.sql.ResultSet rs;
//java.sql.PreparedStatement pst;
cn=null;
st=null;
rs=null;
int sat1=0;
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","manager");
st=cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY );
rs=st.executeQuery("select stat from sample");
if(rs.last())
{
	 sat1=rs.getInt("stat");
	 
}
System.out.println("hsgdjh2");
}
catch(Exception e)
{
e.printStackTrace();	
}
		
if(sat1==1) { %>
var marker = new google.maps.Marker({
    map:map,
    position: new google.maps.LatLng(17.5399206,78.3862495),
    icon : "http://maps.gstatic.com/mapfiles/ridefinder-images/mm_20_red.png"});
<% } %>
<%
if (sat1==0) {
%>
var marker = new google.maps.Marker({
    map:map,
    position: new google.maps.LatLng(17.5399206,78.3862495),
    icon : 'http://maps.gstatic.com/mapfiles/ridefinder-images/mm_20_gray.png'});<% } %>
}
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
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
        <li><a href="http://localhost/SL/Home.html">Home</a></li>
        <li class="active"><a href="http://localhost/SL/Tracking.html">Tracking</a></li>
        <li><a href="LogoutServlet">Logout</a></li>
        
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<br><br>
<div id="nav">
    <h1 align="center">WELCOME</h1>
    <a href="Tracking.html">VNRVJIET</a>
 </div>
   
<!-- ####################################################################################################### -->

</body>
</html>