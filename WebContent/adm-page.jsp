
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
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
           
            if(request.getParameter("pgprt").equals("0"))
            {
            	Class.forName("com.mysql.jdbc.Driver");

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
            	<br><br><br><br><br>
            	<fieldset>
            	<legend>Add-Question</legend>
            	<form action="adm-handler.jsp?q=0" method="post">
	 			Input subject<br>
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

            	Input a question id<br>
            	<input type="text" name="id" required><br>

            	Input a question<br>
            	<textarea rows="3" cols="40" name="question"></textarea><br>

            	Input answer one<br>
            	<textarea rows="3" cols="40" name="ans1"></textarea><br>

            	Input answer two<br>
            	<textarea rows="3" cols="40" name="ans2"></textarea><br>

            	Input answer three<br>
            	<textarea rows="3" cols="40" name="ans3"></textarea><br>

            	Input answer four<br>
            	<textarea rows="3" cols="40" name="ans4"></textarea><br>

            	Input correct answer<br>
            	<textarea rows="3" cols="40" name="correct_ans"></textarea><br>

            	<input type="submit" value="add-a-question">
            	</form>
            	</fieldset>  
            
            
              
            
          <% 
                
            }
            else if(request.getParameter("pgprt").equals("1"))
            {
            	Class.forName("com.mysql.jdbc.Driver");

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
           	<br><br><br><br><br>
           	<fieldset>
           	<legend>Delete-Question</legend>
           	<form action="adm-handler.jsp?q=1" method="post">
	 			Input subject<br>
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

      	Input a question id<br>
      	<input type="text" name="id" required><br>

      	Input a question<br>
      	<textarea rows="3" cols="40" name="question"></textarea><br>
            <input type="submit" value="delete-a-question">
            	</form>
            	</fieldset>  
               
        
                
                
          <%    
            }
            else if(request.getParameter("pgprt").equals("2"))
            {%>	<br><br><br><br><br>
            	<fieldset>
            	<legend>Add-Subject</legend>
            	<form action="adm-handler.jsp?q=2" method="post">
            	Input the title for subject<br>
            	<input type="text" name="subject" required><br>
            	<input type="submit" value="add-subject">
            	</form>
            	</fieldset>
         <%  	
            }
            else if(request.getParameter("pgprt").equals("6"))
            {%>
            	<br><br><br><br><br>
            	<fieldset>
            	<legend>Delete-Subject</legend>
            	<form action="adm-handler.jsp?q=3" method="post">
            	Input the title for subject<br>
            	<input type="text" name="subject" required><br>
            	<input type="submit" value="delete-subject">
            	</form>
            	</fieldset>
          <% 
          }
            else if(request.getParameter("pgprt").equals("4"))
            {
               
            }
            else if(request.getParameter("pgprt").equals("5"))
            {
              
            }
            
            %>
            
          
              

</body>
</html>