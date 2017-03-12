<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>

<title>Insert title here</title>
<style>
body
{ 
	background-image:url(resources/Arnold-Son-Royal.jpg); 
	background-size:cover;                      
    background-repeat:repeat;
 } 
 
 .affix {
      top:0;
      width: 100%;
      z-index: 9999 !important;
  }
  .navbar {
      margin-bottom: 0px;
  }

  .affix ~ .container-fluid {
     position: relative;
     top: 50px;
  }
 /* .button
 {
 background-color:#555555;
 color:white;
 } */
 
</style>
</head>
<!---------------------------------------HEADER----------------------------------------------------------------->
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">

<div class="container-fluid">
      
    <div class="navbar-header">
    </div>
    
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="home"> <span class="glyphicon glyphicon-home"></span>  HOME</a></li>
				<li><a href="aboutus"><span class="glyphicon glyphicon-info-sign"></span>  ABOUT US </a></li>
				<li><a href="contactus"> <span class="glyphicon glyphicon-earphone"></span>  CONTACT US</a></li>
				
			</ul>
			
			  <ul class="nav navbar-nav navbar-right">  
      			<li class="divider-vertical"></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}"> 		
				<li><h4 class="text-right" style="color:#F5F5DC;margin:20px 0px 0px 0px">HELLO ${pageContext.request.userPrincipal.name}</h4></li>
				<li><a  style="margin:5px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span>  LOG OUT</a></li>
				</c:if>					
     		</ul>
     	
     	</div>
  </div>
  </nav>
  
<!----------------------------------------------------LIST------------------------------------------------------------------------>
<div class="container-fluid" align="center" style="margin: 200px 0px 0px 500px">

<div class="col-md-4">
<center><h4 style="color:white;font-size:20px">ADMIN</h4></center><hr noshade>
  <div class="row-fluid">
<a href="category"><button type="button" class="btn btn-primary">CATEGORY</button></a><br><br><hr noshade>
<a href="supplier"><button type="button" class="btn btn-primary">SUPPLIER</button></a><br><br><hr noshade>
<a href="product"><button type="button" class="btn btn-primary">PRODUCT</button></a><br><br>
</div>
</div>
</div>
<!----------------------- FOOTER -------------------------------------------------------------->
<nav class="navbar navbar-inverse" style="color: white;margin: 350px 0px 0px 0px">
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