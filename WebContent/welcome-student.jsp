<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="javax.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link href = "favicon.ico" type = "image" rel = "icon">

</head>
<body style="background-image:url('dfs.jpg');text-align:center;font-family:verdana">
<br><br><br><br>
	
	
 <%
String userid=request.getParameter("email");
 
session.putValue("email",userid); 
String pwd=request.getParameter("pass"); 

Class.forName("com.mysql.jdbc.Driver");
 
Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/port", "root", "Meena@123");
	//get a statement
	Statement st = co.createStatement();
ResultSet rs=st.executeQuery("select * from user where email='"+userid+"'");
 
if(rs.next()) 
{ 
if(rs.getString(4).equals(pwd))
{
 out.println("<p style = font-size:300%;color:red>Welcome Student</p>");
out.println("<a href = dashboard-student.jsp style=text-align:  center;font-family:courier ><br>Move to Dashboard</a>");
out.println("<a href = logout.jsp style=text-align:  center;font-family:courier  >Logout</a>");

}

else 
{
out.println("<p style = font-size:300%;color:red>Invalid password try again</p>"); 





out.println("<a href = index.jsp style= text-align:  center; font-family:courier><br>Main Menu</a>");
}
}


%>
</body>
</html>