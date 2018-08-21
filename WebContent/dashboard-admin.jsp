<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
body, html {
    height: 100%;
    margin: 0;
}

.bg {
    /* The image used */
    background-image: url("c.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
<link href = "favicon.ico" type = "image" rel = "icon">


</head>
<body >
<div class="bg">
<div class="top-area">
		<center><h1 style="font-family:verdana;color:yellow"; font-size:10000%>Admin Panel </h1></center> <a href="logout.jsp" class="button" style="float: right;background:crimson;color:white">Logout</a>
	</div>
<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					

					<div class="left-menu">
					  <a href="adm-page.jsp?pgprt=2"><h2 style="font-family:courier">Add Subject</h2></a>
					  	<a href="adm-page.jsp?pgprt=6"><h2 style="font-family:courier">Delete Subject</h2></a>
						<a  href="adm-page.jsp?pgprt=0"><h2 style="font-family:courier">Add Question</h2></a>
						<a href="adm-page.jsp?pgprt=1"><h2 style="font-family:courier">Delete Question</h2></a>
                       
                         <a href="adm-page.jsp?pgprt=3"><h2 style="font-family:courier">View Student as per subject</h2></a>
                       <a href="adm-page.jsp?pgprt=4"><h2 style="font-family:courier">Approve By Company</h2></a>
            		<a href="adm-page.jsp?pgprt=5"><h2 style="font-family:courier">Remove Student</h2></a>
            	
            		
            
                                                
					
					</div>
				</div>
			</div>
		</div>


</body>
</html>