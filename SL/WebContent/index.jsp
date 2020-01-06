<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
  #map-canvas {
    width:560px;
    height:300px;
    margin: 0 auto 0 auto;
    top:50;
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
<body background="http://fc08.deviantart.net/fs71/i/2011/308/b/7/street_lights_by_iswish-d4f228e.jpg">
<br><br><br><br><br><br><br><br><br>
<div id="map-canvas">
</div>
</body>
</html>