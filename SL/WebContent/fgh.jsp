<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<p>&nbsp;</p>
<%
java.sql.Connection cn;
java.sql.Statement st;
java.sql.ResultSet rs;
//java.sql.PreparedStatement pst;
cn=null;
st=null;
rs=null;
int sat1=0;
Class.forName("oracle.jdbc.driver.OracleDriver");
cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","manager");
st=cn.createStatement();
rs=st.executeQuery("select * from sample2");
%>
<%  
while(rs.next())
  {
	 
     String sec=rs.getString("se");
      String seg=rs.getString("sg");
      String stat=rs.getString("stat");
      String did=rs.getString("did");
      
  %>
  
<a href="intk.jsp"> 
<p>device<%=did%> operated at &nbsp;</p><%= new java.util.Date() %>
</a>
 <%
  }
 %>
</body>
</html> 