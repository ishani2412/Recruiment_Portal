<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style-backend.css">
</head>
<body>
	<div class="top-area">
		<center><h2>Admin Panel</h2></center> <a href="logout.jsp" class="button" style="float: right;background:crimson;color:white">Logout</a>
	</div>

       
            
            <% 
           
            if(request.getParameter("q").equals("0"))
            {	out.println("<br><br><br><br><br><br><br><br><br>");
            	
            
            	String id = request.getParameter("id");
            	 String subject = request.getParameter("subject"),
            	 ques = request.getParameter("question"),
            	 a1 = request.getParameter("ans1"),
            	 a2 = request.getParameter("ans2"),
            	 a3 = request.getParameter("ans3"),
            	 a4 = request.getParameter("ans4"),
            	 ca = request.getParameter("correct_ans");

            	 Class.forName("com.mysql.jdbc.Driver");

            	 Connection co = DriverManager.getConnection
            	  ("jdbc:mysql://localhost:3306/admin1","root","Meena@123");

            	 Statement st = co.createStatement();

            	 String sql = "insert into admin1."+subject+" values('"+id+"','"+ques+"','"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+ca+"')";

            	 int rec = st.executeUpdate(sql);
            	 
            	 if(rec > 0)
            	 {
            	  out.println("<i>question added</i>");out.println("<br><br><br><br><br><br><br><br><br>");
            	  out.println("<a href='adm-page.jsp?pgprt=0'>add more questions</a>");
            	 }
            	 
            	 co.close();

            	
            
          
                
            }
            else if(request.getParameter("q").equals("1"))
            {
            
            	out.println("<br><br><br><br><br><br><br><br><br>");
            	
            	
            	String id = request.getParameter("id");
            	 String subject = request.getParameter("subject"),
            	 ques = request.getParameter("question"),
            	 a1 = request.getParameter("ans1"),
            	 a2 = request.getParameter("ans2"),
            	 a3 = request.getParameter("ans3"),
            	 a4 = request.getParameter("ans4"),
            	 ca = request.getParameter("correct_ans");

            	 Class.forName("com.mysql.jdbc.Driver");

            	 Connection co = DriverManager.getConnection
            	  ("jdbc:mysql://localhost:3306/admin1","root","Meena@123");

            	 Statement st = co.createStatement();

            	 String sql = "delete from admin1."+subject+" where id =('"+id+"')";

            	 int rec = st.executeUpdate(sql);
            	 
            	 if(rec > 0)
            	 {
            	  out.println("<i>question deleted</i>");out.println("<br><br><br><br><br><br><br><br><br>");
            	  out.println("<a href='adm-page.jsp?pgprt=1'>delete more questions</a>");
            	 }
        
                
                
                
            }
            else if(request.getParameter("q").equals("2"))
            {
            	out.println("<br><br><br><br><br><br><br><br><br>");
            	String subject = request.getParameter("subject");

           	 Class.forName("com.mysql.jdbc.Driver");
           	 
           	 Connection co = DriverManager.getConnection
           	   ("jdbc:mysql://localhost:3306/admin1","root","Meena@123");
           	 
           	 Statement st = co.createStatement();
           	 
           	 String sql = "create table admin1."+subject+"(id int,question varchar(255),answer1 varchar(255),"+
           	   "answer2 varchar(255),answer3 varchar(255),answer4 varchar(255),correct varchar(255), primary key(id))";
           	 
           	 System.out.println(">>>>"+sql);
           	 
           	 int nora = st.executeUpdate(sql);
           	 
           	 if(nora >= 0)
           	 {
           	  out.println("<i style='color : blue'>subject has been saved</i>");out.println("<br><br><br><br><br><br><br><br><br>");
           	  out.println("<a href='dashboard-admin.jsp'>show dashboard</a>");out.println("<br><br><br><br><br><br><br><br><br>");
           	  out.println("<a href='adm-page.jsp?pgprt=0'>add a question</a>");
           	 }
              
            }
            else if(request.getParameter("q").equals("3"))
            {
            	out.println("<br><br><br><br><br><br><br><br><br>");
            	String subject = request.getParameter("subject");

           	 Class.forName("com.mysql.jdbc.Driver");
           	 
           	 Connection co = DriverManager.getConnection
           	   ("jdbc:mysql://localhost:3306/admin1","root","Meena@123");
           	 
           	 Statement st = co.createStatement();
           	 
           	 String sql = "drop table admin1."+subject;
           	 
           	 System.out.println(">>>>"+sql);
           	 
           	 int nora = st.executeUpdate(sql);
           	 
           	 if(nora >= 0)
           	 {
           	  out.println("<i style='color : blue'>subject has been deleted</i>");out.println("<br><br><br><br><br><br><br><br><br>");
           	  out.println("<a href='dashboard-admin.jsp'>show dashboard</a>");out.println("<br><br><br><br><br><br><br><br><br>");
           	  
           	 }
              
            }
            else if(request.getParameter("q").equals("4"))
            {
               
            }
            else if(request.getParameter("q").equals("5"))
            {
              
            }
            else
            {
               
            
              
            
            
            }
            %>
            
          
              

</body>
</html>