<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<title>CONTACT US</title>
<style>
body{ 
background-image: url(resources/contctus.jpg); 
background-size:cover;                      
    background-repeat:no-repeat;
 } 
   .bg-grey {
      background-color: #f6f6f6;
  }
  .slideanim {visibility:hidden;}
 
 </style>
 </head>
 <!----------------------------------HEADER----------------------------------------------------------------->
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">

<div class="container-fluid">
      
    <div class="navbar-header">
    </div>
    
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="home"> <span class="glyphicon glyphicon-home"></span>  HOME</a></li>
				<li><a href="contactus"> <span class="glyphicon glyphicon-info-sign"></span>ABOUT US</a></li>
				</ul>
				
			  <ul class="nav navbar-nav navbar-right">  
      			<li class="divider-vertical"></li>
				<li><a  style="margin:0px 0px 0px 0px" href="<c:url value="register" />"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
				<li><a  style="margin:0px 0px 0px 0px" href="<c:url value="login" />"><span class="glyphicon glyphicon-log-in"></span> LOG IN</a></li>
				</ul>
     	</div>
  </div>
  </nav>
<!---------------------------CONTACT US FORM ---------------------------------------------------------------->
<form action="login" >
<div class="container" style="align:center; margin: 70px 0px 0px 0px;color:white">
  <h2 class="text-center">CONTACT</h2>
  <div class="row">
    <div class="col-sm-12" style="align:text-center">
      <h2>Contact us and we'll get back to you within 24 hours.</h2>
      <h4><span class="glyphicon glyphicon-map-marker"></span> Bangalore,INDIA</h4>
      <h4><span class="glyphicon glyphicon-phone"></span> +080 25151515</h4>
      <h4><span class="glyphicon glyphicon-envelope"></span> intime@gmail.com</h4>
    </div>
   
    </div>
    <br>
    <br> 
    <div class="col-sm-7">
      <div class="row">
        <div class="col-sm-12 form-group">
          <input class="form-control" style="border:0.25px solid black;background-color:black;color:white" id="name" name="name" pattern="[A-Za-z]{4,}$"placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-12 form-group">
          <input class="form-control" style="border:0.25px solid black;background-color:black;color:white"id="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" style="border:0.25px solid black;background-color:black;color:white" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-primary btn-md" type="submit">Send</button>
        </div>
      </div>
    </div>
  </div>
</form>
<!----------------------- FOOTER -------------------------------------------------------------->
<nav class="navbar navbar-inverse" style="margin: 500px 0px 0px 0px;color: white">
 <div class="row-sm-1">

<div class="col-md-4">
 <img src="<c:url value="resources/american-express.jpg"/>" style="padding:10px"></img>
<img src="<c:url value="resources/master-card.jpg"/>"style="padding:10px"></img>
<img src="<c:url value="resources/visa.jpg"/>"style="padding:10px"></img> 
</div>

 <div class="col-md-4"> 
 <p align="center"  style="color: white">All Rights Reserved &reg</p>
 <p align="center"  style="color: white">&copy 2017-2038,wesitename</p>
 </div>

<div class="col-md-4"> 
<p align="right">
<a href="https://www.facebook.com"> 
<img src="<c:url value="resources/Facebook.png"/>" style="padding:10px"></img></a>
 <a href="https://twitter.com/login">
<img src="<c:url value="resources/Twitter.png"/>" style="padding:10px"></img></a>
<a href="https://accounts.google.com/ServiceLogin#identifier"> 
<img src="<c:url value="resources/Google.png"/>" style="padding:10px"></img></a>
</p>
</div>
</div>
</nav>


</body>
</html>