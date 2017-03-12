<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<title>Insert title here</title>
<style>
body{
background-image: url(resources/Rolex4.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;

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
</head>

<!---------------------------------------HEADER----------------------------------------------------------------->
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-inverse navbar-fixed-top">

<div class="container-fluid">
      
    <div class="navbar-header">
    </div>
    
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="home"> <span class="glyphicon glyphicon-home"></span>  HOME</a></li>
				<li><a href="aboutus"><span class="glyphicon glyphicon-info-sign"></span>  ABOUT US </a></li>
				<li><a href="contactus"> <span class="glyphicon glyphicon-earphone"></span>  CONTACT US</a></li>
				<!-- <li><h4 style="color:#F5F5DC;margin:20px 100px 0px 200px">THANK YOU</h4></li> -->
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


<!-------------------------THANK YOU--------------------------------------------------------------------------------------------->
<div style="color:#000000;">
<h1 style="font-size:65px;margin:200px 0px 0px 120px">YOUR ORDER HAS BEEN RECEIVED</h1>
<h2 style="font-size:50px;margin:150px 0px 0px 120px">Thank you for your purchase!</h2>
</div>


<%-- <center><h1 style="color:black">REVIEW ORDER</h1></center>
<div class="container" style="align:center; margin: 20px 100px 0px 400px">
	
	<c:if test="${!empty cartList}">
	<div class="row">
		<div class="col-xs-8">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
					<div class="row">
							<!-- <div class="col-xs-6">
								<h5><span class="glyphicon glyphicon-shopping-cart"></span> REVIEW ORDER</h5>
							</div> -->
							<div class="col-xs-6">
								<a href="<c:url value="/myCart" />" type="button" class="btn btn-primary btn-sm btn-block">
									<span class="glyphicon glyphicon-share-alt"></span> Edit cart
								</a>
							</div>
						</div>
					</div>
				</div>
			<div class="panel-body">
				<c:forEach items="${cartList}" var="cart">
				<div class=row>
					<div class="dropdown">
						<div class="col-xs-3"><img style="width:150px;height:100px" src="<c:url value="/resources/images/${cart.p_id}.jpg"/>"/>
						<div class="dropdown-content">
						 <img src="<c:url value="/resources/images/${cart.p_id}.jpg"/>" alt="Trolltunga Norway" width="300" height="300">
						</div>
						</div>
						</div>
						<div class="col-xs-3">
							<h4 class="product-name"><strong>${cart.p_name}</strong></h4>
							<h4><small>Quantity:${cart.quantity}</small></h4>
						</div>
						<div class="col-xs-6">
							<div class="col-xs-6 text-right">
								<h4 class="text-right"><strong>${cart.price}</strong></h4>
								
							</div>
							
							
						</div>
					</div>
						<hr>
				</c:forEach>
				
					
					
				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right"> Total: ${sum}</h4>
						   </div>
						<div class="col-xs-3">
							<a href="payment" type="button" class="btn btn-success btn-block">
								Proceed to Pay
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
 --%>








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