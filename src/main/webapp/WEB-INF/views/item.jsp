<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
  
<style>
body
{ 
	background-image:url(resources/back13.jpg);
	background-size:cover;                      
    background-repeat:repeat;

 } 
<!-----------NAVBAR STYLES---------->
.navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
<!-------------HOVERABLE NAVABAR STYLE-------->   
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
/*     background-color: #333; */
}

li {
    float: left;
}

li a,.dropbtn:hover {
    display: inline-block;
    color: white;
     min-width: 100px;
    text-align: center;
    padding: 14px 16px;
    text-decoration:none;
}


.dropdown-content a:hover{
background-color:blue;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 100px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    
    text-decoration: none;
    display: block;
    text-align: left;
}

/* .dropdown-content a:hover {background-color:grey} */

.dropdown:hover .dropdown-content {
    display: block;
}
.img:hover{
	width:"300px";
	height:"300px";
}

table{
	border:2.5px white;
	border-spacing: 5px;
	width:100%;
} 
th{
    color:white;
    background-color:grey;
    align:center;
    padding: 15px;
    text-align: center;
}
td {
    background-color:black;
    align:center;
    color:white;
    font-size:120%;
    padding: 15px;
    text-align:center;
}
</style>
</head>
<!--------------------------------------HEADER ------------------------------------------------------------------------------------------>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-inverse navbar-fixed-top">

<div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
		<li class=""><a href="home"> <span class="glyphicon glyphicon-home"></span> HOME</a></li>
      <c:forEach items="${categoryList}" var="category">
      <li class="dropdown">
      <a class="dropbtn" href=${category.cname}>${category.cname}</a>
      <div class="dropdown-content">
      <c:forEach items="${category.products}" var="product">
      <a style="color:#000000" href="<c:url value='product/get/${product.pid}'/>"> ${product.pname} </a> 
     </c:forEach>
     </div>
      </c:forEach>
      </ul>
    
    
    <ul class="nav navbar-nav">
     <li class="divider-vertical"></li>
       <c:if test="${pageContext.request.userPrincipal.name != null}">
      <c:if test="${pageContext.request.userPrincipal.name != 'meenakshi'}">
      <li><a  href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> CART </a>${cartSize}</li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name  == 'meenakshi'}">
       <li><a href="<c:url value="/admin" />"><span class="glyphicon glyphicon-menu-hamburger"></span> VIEW ALL </a></li>
       </c:if>
       <li><a style="color:#F5F5DC">HELLO ${pageContext.request.userPrincipal.name}</a></li>
       <li><a  style="margin:0px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>
       </c:if>
        </ul>
       <ul class="nav navbar-nav navbar-right">
       <c:if test="${pageContext.request.userPrincipal.name  == null}">
       <li><a  style="margin:0px 0px 0px 0px" href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> LOGIN </a></li>
       <li><a  style="margin:0px 0px 0px 0px" href="<c:url value="register" />"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
       </c:if>
     </ul>
    
  </div>
  
</nav>

<!------------------------------------------- PRODUCT LIST ----------------------------------------------------------------------->

<%--product list declartion  --%>	
			
			<div class="container-fluid" style="align:center;margin:100px 0px 0px 100px">
		
			
			<div class="row">
			<c:choose>
				<c:when test="${!empty selectedProduct.pname}">
				
				  <div class="col-sm-6" style="align:left" >
             <img width="500" height="500" src="<c:url value="/resources/images/${selectedProduct.pid}.jpg"/>" />
              
             
						</div>
						
						
						<div class="col-sm-6">
					<i style="font-size:40px">${selectedProduct.pname}</i>
					<hr>
					<br>
  				<b style="font-size:20px">BY<i style="font-size:20px"> ${selectedProduct.supplier.sname}</i></b>
  				<hr>
  				<br>
  				<b style="font-size:20px">Price: &#8377 ${selectedProduct.pprice}</b>
  				<hr style="color:blue">
  				<ul>
  				<li style="font-size:20px;color:black;">${selectedProduct.pdescription}</li>
  				</ul>
  				<br>
  				<%-- <a style="align:center" href="<c:url value='cart/add/${selectedProduct.pid}' />">
  				<button  type="button" class="btn btn-primary">Add to Cart</button>
  				</a> --%>
					
					<div class="footer">
						
						<div class="col-sm-6" style="margin:20px 0px 0px 0px">
							<a style="align:right" href="<c:url value='cart/add/${selectedProduct.pid}' />"><button  type="button" class="btn btn-primary">Add to Cart</button></a>
						</div>
					</div>
     				
						
				</div>
				</c:when>
				<c:otherwise>
				<i style="font-size:50px">CHOOSE A WATCH FROM THE MENU ABOVE TO VIEW IT HERE ..</i>
				</c:otherwise>
				</c:choose>
				
					</div>
					
					</div>
					
<!----------------------- FOOTER -------------------------------------------------------------->
<nav class="navbar navbar-inverse" style="margin: 650px 0px 0px 0px;color: white">
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