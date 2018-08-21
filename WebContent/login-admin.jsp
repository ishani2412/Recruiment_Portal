<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href = "favicon.ico" type = "image" rel = "icon">

</head>
<body style="background-image:url('dfs.jpg');text-align:center;font-family:verdana" >
<form  method=post action="welcome-admin.jsp">
<img src="admin.png" style=align:center ><br>
 <h4 style="text-align:center;">
  <br>
   E-mail:<br>
  
  <input type="text" placeholder="E-mail" name="email" style="padding:12px" ><br>
  </h4>
  <h4 style="text-align:center;">
  Password:<br>
  

  <input type="password" placeholder="Password" name="pass" style="padding:12px"></h4>
  <h4 style="text-align:center;">
  <input type="submit" value="Login" style = "background-color:#27AE60;margin:30px;padding:9px 18px"><br></h4>
  <p style="text-align:center;"> <a   style="font-family:verdana;"
 href = "forgot.jsp" >Forgot Password?
 
 </a><br></p></form>
</body>
</html>