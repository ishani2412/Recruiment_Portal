

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
        <link rel="stylesheet" type="text/css" href="Quiz_select.css" />
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
            

    </head>
    <body>
   
        
        <h1>Result of Exam</h1>
        <%! String NO;
						
            String question;String A; String B; String C; String D;int Answer=0; String K;%>
           
            <%
        
              
               
       
              PreparedStatement st; 
             
                 Connection conn;
           ResultSet res;
           try
           {
               Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin1","root","Meena@123");
           
           
                 try
                    {
                             st=conn.prepareStatement("SELECT * FROM ds ");
                             
                     res=st.executeQuery();
               
               while(res.next())
               {
                   if(request.getParameter(K).equals(7))
                 {
                     Answer=Answer+5;
                 }
                
             }
               
             out.println("Your Score is "+Answer);
            if(Answer>=10)
             {
                 out.println("Congratulation's Your Pass");
             }
             else 
             {
                 out.println(" Try Next Time !");
             }
               conn.close();
           }
           catch (SQLException s)
           {
               out.println("<h2>Data Base Error...</h2>");
           }
           }
           catch(NullPointerException e)
        {
            System.out.print("NullPointerException Caught");
        }        
       %>
           
    </body>
    <style>
        body{
            background-color: silver;
            font-size: 30px;
        }
    </style>
</html>
