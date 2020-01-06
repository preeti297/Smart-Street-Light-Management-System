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
<style>
.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position:middle;
  top: 10px;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #C8C8C8;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #565656;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #606060;
}
.form .message {
  margin: 15px 0 0;
  color: #D0D0D0;
  font-size: 12px;
}
.form .message a {
  color: #565656;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.Invalid {
 color: #FF0000;
 text-align: center;
 font-size: 25px;
 }
</style>
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
      </div>
  </div>
</div><br><br>
<div class="Invalid"> ${message}
</div>
<div class="login-page">
  <div class="form">
    <form  action="LoginServlet" method="post">
    
      <input type="text" name="username" placeholder="username"/>
      <input type="password" name="password" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="http://localhost/StreetLights/Register.html">Create an account</a></p>
      </form>
  </div>
</div>  


<!-- ####################################################################################################### -->
<div class="wrapper col6">
  <div id="footer">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>