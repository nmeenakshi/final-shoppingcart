<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<style>
 body
{ 
	background-image:url(resources/rolex3.jpg);
	background-size:cover;                      
    background-repeat:no-repeat;
 }  
</style>
<!----------------------------------------HEADER--------------------------------------------------------------------------------->
<body>
<nav class="navbar navbar-inverse">

<div class="container-fluid">
    <div class="navbar-header">
     <%-- <a class="navbar-nav navbar-left" href="home">
       <img class="img-responsive" src="<c:url value="resources/Logomakr_3iT8tn.png"/>" width="130px" alt="logo" style="display: inline-block;"> 
       </a> --%>
    </div>
    <ul class="nav navbar-nav">
		<li><a href="home"> <span class="glyphicon glyphicon-home"></span> HOME</a></li>
      </ul>
    
    
    <ul class="nav navbar-nav">
    
      <li><a href="aboutus"><span class="glyphicon glyphicon-info-sign"></span> ABOUT US </a></li>
      <li><a href="contactus"> <span class="glyphicon glyphicon-earphone"></span> CONTACT US </a></li>
      <!-- <li><h4 style="color:#F5F5DC;margin:20px 100px 0px 200px">SIGN UP FORM</h4></li>  -->
        </ul>
        <ul class="nav navbar-nav navbar-right">
       <c:if test="${pageContext.request.userPrincipal.name  == null}">
       <li><a  style="margin:0px 0px 0px 0px" href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> LOGIN </a></li>
       </c:if>
     </ul>
    
    
    
  </div>
  
</nav>



<!--------------------------------------REGISTER FORM------------------------------------------------------------------------------------------>
<div class="container">
<br>
  <br>
  <br>
  <form:form method="POST" commandName="user" action="register/add">
   <div class="row">
   </div>
   <div class="form-group">
   <div class="row">
   <div class="col-xs-8">
    <label for="name">User Name:</label>
     <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <form:input type="text" class="form-control" id="username" placeholder="Enter Name" path="username"  pattern="[A-Za-z0-9.]{4,}$" title="only alphabets & numbers with . allowed [minimum 4 characters]" required="true"/> 
    </div> 
    </div>
    </div>
    </div>
    <br>
    
    <div class="form-group">
     <div class="row">
     <div class="col-xs-8">
    <label for="password">Password:</label>
    	<div class="input-group">
    	<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
     <form:input type="password" class="form-control" id="password" placeholder="Enter password" path="password" pattern=".{6,}"  title="minimum 6 characters" required="true"/>
     	</div>
     	</div>
    </div>
    </div>
    <br>
       
    <div class="form-group">
     <div class="row">
     <div class="col-xs-8">
      <label for="address">Address:</label>
      <div class="input-group">
    	<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <form:input type="text" class="form-control" id="address" placeholder="Enter address" path="address" />  <%--  pattern="[#.0-9]+,[A-Za-z0-9]+,[A-Za-z0-9]+,[A-Za-z]+,[A-Za-z]+-[0-9]$" required="false" --%>
    </div>
    </div>
     </div>
     </div>
     <br>
    
      <div class="form-group">
       <div class="row">
       <div class="col-xs-8">
      <label for="email">Email:</label>
      <div class="input-group">
    	<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <form:input type="text" class="form-control" id="email" placeholder="Enter email" path="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Eg:someone@something.domain" required="true"/>
    </div>
     </div>
     </div>
     </div>
    <br>
    
    <div class="form-group">
     <div class="row">
     <div class="col-xs-8">
      <label for="phno">Phonenumber:</label>
      <div class="input-group">
    	<span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
      <form:input type="text" class="form-control" id="phonenumber" placeholder="Enter phonenumber" path="phonenumber" pattern="[0-9-+]{8,15}" title="allowed to use only numbers with + - symbols[min-8 , max-15]" required="true"/>
    </div>
    </div>
    </div>
    </div>
   <br>
   
   <div class="row">
     <div class="col-xs-8">
   <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
   </div>
   </div>
   
   <div class="row">
     <div class="col-xs-8">
    <button type="submit" class="btn btn-primary btn-lg">Register</button>
    </div>
    </div>
  </form:form>
</div>
<!----------------------- FOOTER -------------------------------------------------------------->
<nav class="navbar navbar-inverse" style="margin: 200px 0px 0px 0px;color: white">
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