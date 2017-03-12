<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

<title>REVIEW ORDER</title>
</head>
<style>
body{
background-image: url(resources/back17.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
    background-attachment: fixed;

}
th{
    color:white;
    background-color:black;
    
}

table, th, td {
    border: 1px solid black;
    align:center;
}

h2{
color:black;
font-family: "Times New Roman", Times, serif;
}
 h5,h4,h6,h3,i{
 color:white;
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
  e_magnifier div img {
    display: none;
    height: 500px ;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}



</style>
<!-----------------------------------HEADER---------------------------------------------->
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-inverse" data-spy="affix">

<div class="container-fluid">
      
    <div class="navbar-header">
    </div>
    
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="home"> <span class="glyphicon glyphicon-home"></span>  HOME</a></li>
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
<!------------------------------------REVIEW DETAILS---------------------------------------------------------------------------->

<div class="container" style="align:center; margin: 100px 100px 0px 100px">
	
	<c:if test="${!empty cartList}">
	<div class="row">
		<div class="col-xs-8">
			<div class="panel panel-info"  style="background-color:black;border:0.25px solid black">
				<div class="panel-heading" style="background-color:grey">
					<div class="panel-title">
					<div class="row">
							<div class="col-xs-6">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span> REVIEW YOUR TRAY</h5>
							</div>
							<div class="col-xs-6">
								<a href="<c:url value="/myCart" />" type="button" class="btn btn-primary btn-sm btn-block">
									<span class="glyphicon glyphicon-share-alt"></span><h5>Edit cart</h5>
								</a>
							</div>
						</div>
					</div>
				</div>
			<div class="panel-body">
				<c:forEach items="${cartList}" var="cart">
				<div class=row>
					<div class="dropdown" style="background-color:white">
						<div class="col-xs-3"><img style="width:150px;height:200px" src="<c:url value="/resources/images/${cart.p_id}.jpg"/>"/>
						<div class="dropdown-content">
						 <img src="<c:url value="/resources/images/${cart.p_id}.jpg"/>" alt="Trolltunga Norway" width="300" height="300">
						</div>
						</div>
						</div>
						<div class="col-xs-3">
							<h4 class="product-name"><strong>${cart.p_name}</strong></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h4 class="text-right"><strong>&#8377 ${cart.price}</strong></h4>
								
							</div>
							
							
						</div>
					</div>
						<hr>
				</c:forEach>
				
					
					
				</div>
				<div class="panel-footer" style="background-color:grey">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right"> Total:&#8377 ${sum}</h4>
						   </div>
						<div class="col-xs-3">
							<a href="payment" type="button" class="btn btn-success btn-lg btn-block">
								Details form
							</a>
						</div>
					</div>
     				</div>  
			</div>
		</div>
	</div>
	</c:if>
</div>
<br>
<br>
<br>
<br>
<!----------------------- FOOTER -------------------------------------------------------------->
<nav class="navbar navbar-inverse" style="margin:400px 0px 0px 0px ;color: white">
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