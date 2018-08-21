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
        <title>JSP Page</title>
        <script type="text/javascript">
        var sessionTimeout = 1800;	
        
        function DisplaySessionTimeout()
        {
            window.history.go(+1);
            sessionTimeout = sessionTimeout - 1;
            //document.getElementById("val").innerHTML=sessionTimeout;
            
            //if session is not less than 0
            if (sessionTimeout >= 0)
                {
                //call the function again after 1 minute delay
                
               window.setTimeout("DisplaySessionTimeout()",1000);
                }    
            else
            {
                //show message box
                //document.getElementById("val").innerHTML="TIME OUT";
                alert("Your current Session is over.");
                setTimeout(document.form1.sub.click());
            }
        }
        
 

// 
 var milisec=0 
 var seconds=30 
 document.form1.d2.value='30' 

function display()
{ 
 if (milisec<=0){ 
    milisec=60 
    seconds-=1 
 } 
 if (seconds<=-1){ 
    milisec=0 
    seconds+=1 
 } 
 else 
    milisec-=1 
    document.form1.d2.value=seconds+"M : "+milisec+" S"
    setTimeout("display()",1000) 
} 



</script>
    </head>
    
    <body>
      <body onLoad="javascript:display();DisplaySessionTimeout();">
             
             <form name="form1" action="Result.jsp" method="post">
                <div class="clock">
                 <input type="text" name="d2" value="" size="8"><br>
                </div>
        <%! String NO;
            String question;String A; String B; String C; String D;String Answer; String email;%>
            <% email=request.getParameter("email");
            String subject = request.getParameter("subject");
            session.setAttribute("sub", subject);
            %>
            <h1>Online Quiz</h1><br>
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
               st=conn.prepareStatement("SELECT * FROM "+subject);
               res=st.executeQuery();
               
               while(res.next())
               {
                NO=res.getString(1);
               question=res.getString(2);
               out.println("<hr>");
               out.println("<hr>Question : " +question+"</br>");
               out.println("<hr>");
               A=res.getString(3);//3
               B=res.getString(4);//4
               C=res.getString(5);//5
               D=res.getString(6);//6
               Answer=res.getString(7);
               
               out.println("<hr><input type='checkbox' value='A' name='K'>" +A+"</br>");         
               out.println("<input type='checkbox' value='B' name='K'>" +B+"</br>");
               out.println("<input type='checkbox' value='C' name='K'>" +C+"</br>");
               out.println("<input type='checkbox' value='D' name='K'>" +D+"</br>");
               }
              
               conn.close();
           }
           catch (SQLException s)
           {
              out.println("SQL Error"); 
           }
           }
           catch (Exception e)
           {
               out.println("Program Error");
           }
           
           
           %>
   
    <input type="submit" >
    <input type="reset">
        </form>
     </body>
    </body>
</html>
