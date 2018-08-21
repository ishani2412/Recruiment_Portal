<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <%@ page import="java.sql.*" %>



<%@page import="java.util.ArrayList"%>

<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Examination System
					</h2><br><br>
					<div class="left-menu">
						<div class="menu">
            <a href="dashboard-student.jsp" class="button">Home</a>
            <a class="button" href="exam.jsp">exams</a>
            <a class="button" href="results.jsp">results</a>
					</div>
				</div>
		
                       </div>
               <!-- CONTENT AREA -->
			<div class="content-area">
                            
 
              
         
                       
              
        <div class="panel form-style-6" style="float: left;max-width: 900px; padding-top: 40px;">
        <br>  <br>  <br>  <br>
     <%    Class.forName("com.mysql.jdbc.Driver");

            	 Connection co = DriverManager.getConnection
            	  ("jdbc:mysql://localhost:3306/admin1","root","Meena@123");

            	 Statement st = co.createStatement();
            	 Statement st2 = co.createStatement();

            	 String sql = "show tables in admin1";

            	 ResultSet rs = st.executeQuery(sql);
            	 ResultSet rs2 = st2.executeQuery(sql);
            	 
            	 int records = 0;
            	 
            	 while(rs.next())
            	 {
            	  records++;
            	 }
            	 
            	 String[] tables = new String[records];

            	 int i = 0;
            	 
            	 while(rs2.next())
            	 {
            	  tables[i] = rs2.getString(1);
            	  i++;
            	 }
            	 
            	 co.close();
       %> 
            <div class="title" style="margin-top: -60px;">Select Course to Take Exam</div>
       <br/>
       <form action="test.jsp">
                   
       <select name="subject">
            	 <%
            	  for(int index = 0; index < tables.length; index++)
            	  {
            	 %>
            	  <option><%=tables[index]%></option>
            	 <%   
            	  }
            	 %> 
            	</select>
            	<br>
       
           <br/><br>
               
               
               
                <input type="hidden" name="operation" value="startexam">
                
            <input type="submit" value="Take Exam" class="form-button">
            </form>
         
        </div>
 
    
</div>
       