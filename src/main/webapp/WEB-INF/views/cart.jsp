<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
 <%@ taglib  prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>YOUR ORDER</title>
</head>
<style>

body
{
background-image: url(resources/back25.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
    background-attachment: fixed;

} 
/* div
{
    color:white;
    background-color:black;
    
} */

/* table, th, td 
{
    border: 1px solid black;
    align:center;
}
 */
 h5,h4,h6,h3,i,hr{
 color:white;
 }
 /* span{
 color:black;
 } */
 
 
h2{
color:black;
font-family: "Times New Roman", Times, serif;
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

.desc {
    padding: 15px;
    text-align: center;
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
</style>
<!---------------------------------------HEADER-----------------------------------------------------------------><!---------------------------------------HEADER----------------------------------------------------------------->
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-inverse navbar-fixed-top">

<div class="container-fluid">
      
    <div class="navbar-header">
    </div>
    
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="home"> <span class="glyphicon glyphicon-home"></span>  HOME</a></li>
				<!-- <li><h4 style="color:#F5F5DC;margin:20px 100px 0px 200px">CATEGORY</h4></li> -->
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

<!--------------------------------------CART LIST--------------------------------------------------------------->
	<center ><h1 style="color:black">CART LIST</h1></center>
	<div class="container" style="align:center; margin:50px 200px 0px 200px ">
	
	<c:if test="${!empty cartList}">
	<div class="row" >
		<div class="col-xs-8" >
			<div class="panel panel-info"  style="background-color:black;border:0.25px solid black">
				<div class="panel-heading" style="background-color:grey">
					<div class="panel-title">
					<div class="row">
							<div class="col-xs-6">
								<h5 style="color:white;font-size:20px"><span class="glyphicon glyphicon-shopping-cart" style="color:white;font-size:20px"> Your Tray</span ></h5>
							</div>
							<div class="col-xs-6">
								<a href="home" type="button" class="btn btn-primary btn-sm btn-block">
									<span class="glyphicon glyphicon-share-alt"></span><h5>Continue shopping</h5></a>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
				<c:forEach items="${cartList}" var="cart">
					
					<div class="dropdown" style="background-color:white">
						<div class="col-xs-6"><img style="width:200px;height:200px" src="<c:url value="/resources/images/${cart.p_id}.jpg"/>"/>
						 <div class="dropdown-content">
						 <img src="<c:url value="/resources/images/${cart.p_id}.jpg"/>" alt="Trolltunga Norway" width="400" height="400">
						</div>
						</div>
						</div>
						
						<div class="col-xs-12">
						<div class="col-xs-6  text-left">
							<strong><i style="font-size:20px ;align:center" class="product-name" >${cart.p_name}</i></strong>
						</div>
					<div class="col-xs-6">
							 <div class="col-xs-6">
								<h3>&#8377 ${cart.price}</h3>
							</div>
							
							<div class="col-xs-2">
								
								<a href="<c:url value='cart/delete/${cart.id}' />"><button type="button" class="btn btn-link btn-xs">
									<span class="glyphicon glyphicon-trash" > </span>
								</button></a>
							</div>
						</div>
					</div>
					<hr>
				</c:forEach>
				
					
					
					
					<div class="row">
						<div class="text-center">
						
							<!-- <div class="col-xs-9">
								<h6 class="text-right">Added items</h6>
							</div> -->
							<%-- <div class="col-xs-3">
								<a href="<c:url value="/myCart" />" type="button" class="btn btn-primary btn-sm btn-block" style="color:white">
									Update cart
								</a>
							</div> --%>
						</div>
					</div>
				</div>
				<div class="panel-footer" style="background-color:grey">
					<div class="row text-center">
					<div class="col-xs-4">
								<a href="<c:url value="/myCart" />" type="button" class="btn btn-primary btn-lg btn-block" style="color:white">
									Update cart
								</a>
							</div>
						<div class="col-xs-4">
							<h4 class="text-center" style="font-size:20px" > Total : &#8377 ${sum}</h4>
						   </div>
						<div class="col-xs-4">
							<a href="checkout" type="button" class="btn btn-success btn-lg btn-block">
								Checkout
							</a>
						</div>
					</div>
     				</div>  
			</div>
		</div>
	</div>
	</c:if>
</div>

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