
<!--<body >
	<h2>Login As</h2><br>
	<h6><a href = "login-admin.jsp">Admin</a> / <a href = "login-student.jsp">user</a> </h6>

<a href = "signup.jsp"> Sign up
 </a><br>
<h1 >Performance Evaluation and Recruitment</h1>
 <br><br><br><br>
 <p style=text-align:center;><img src=admin.png  ><br>Login as Admin</a><br>
 <p style=text-align:center;><img src=student.png  ><br>
 Login as Student<br></a></p></p>
 <body>

 -->
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="index.css">
  
</head>
 <body>
 	<h1 >Performance Evaluation and Recruitment</h1>

<div class="wrapper">
	<div class="container">
		<div class="container1">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="https://cdn-images-1.medium.com/max/1600/1*ctGOjl3pbhU_4j1yYkl6-A.jpeg" style="width:105%;height: 105%">
      </div>

      <div class="item">
        <img src="http://bluegean.in/wp-content/uploads/2016/08/Recruiting-Process.jpg" alt="picture2" style="width:150%;height:105%;">
      </div>
    
      <div class="item">
        <img src="picture3.jpg" alt="picture3" style=";object-fit: cover;	width:100%;height:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
	<div class="right-column">
		<h2>Welcome</h2><br>
		<h3>Login As</h3><br>
		
			<a href="login-admin.jsp"><button class="button button1"  ><i class="fa fa-user-secret" style="font-size:24px"></i>  Admin</button></a><br><br>
			<a href="login-student.jsp"> <button class="button button2"  ><i class="fa fa-user" style="font-size:24px"></i> User</button></a>
<br>
		<br>
		<a href = "signup.jsp"> Sign up
 </a>
	</div>
</div>
	
</div><br>

<p><a href="index.jsp">Home</a>			<a href="companies.html">Companies</a>			<a href="contact.html">Contact</a>
</body>
</html>