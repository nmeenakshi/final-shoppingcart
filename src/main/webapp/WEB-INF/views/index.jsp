<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Shopping : Watches</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <style>
 /* .carousel-inner > .item > img,
   .carousel-inner > .item > a > img  
   { 
      width:700px; 
      height:700px; 
	  margin: auto; 
  }  
 */


 body{
 background-image: url(resources/back01.jpg); 
 background-size:cover;                      
     background-repeat:no-repeat;
      background-attachment: fixed; 
 } 
 
 .carousel-inner img{  
        width:100%; /* Set width to 100% */
        margin: auto; 
       height:100%;  
     }  
    
   .carousel .carousel-control{ 
    opacity: 0; 
     } 
 .carousel .carousel-control:hover{ 
   opacity: 1; 
   background-image:none; 
    filter:none; 
 } 

 .carousel-indicators li { 
 visibility: hidden; }

 h3 , h5 {
     font: italic bold 30px Georgia, serif ; 
    color:black; 
 } 
 i{ 
 color:black; 

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
    /* background-color: #333; */ 
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

  
  </style>

</head>
<!--------------------------------------HEADER ------------------------------------------------------------------------------------------>
<body>

<nav class="navbar navbar-inverse">

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
      <li><a href="aboutus"><span class="glyphicon glyphicon-info-sign"></span> ABOUT US </a></li>
      <li><a href="contactus"> <span class="glyphicon glyphicon-earphone"></span> CONTACT US </a></li> 
      
       <li class="divider-vertical"></li>
       <c:if test="${pageContext.request.userPrincipal.name != null}">
      <c:if test="${pageContext.request.userPrincipal.name != 'meenakshi'}">
      <li><a  href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> CART </a>${cartSize}</li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name  == 'meenakshi'}">
       <li><a href="<c:url value="/admin" />"><span class="glyphicon glyphicon-menu-hamburger"></span> VIEW ALL </a></li>
       </c:if>
       <li><a style="color:#F5F5DC">HELLO, ${pageContext.request.userPrincipal.name}</a></li>
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

<!---------------------------------------------------CAROUSEL ---------------------------------------------------------------------------------->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
     <a href="item">
		<img class="img-responsive" src="<c:url value="resources/carousel-rolex.jpg"/>" alt="rolex">
      </a>
       <div class="carousel-caption">
         <h3>GMT-MASTER II OYSTER PERPETUAL</h3>
         <i style="color:grey">Although the GMT-Master was designed essentially for professional use, its combination of
  peerless functionality and rugged good
looks has attracted a wider travelling public.</i>
       </div>
      
    </div>
   

    <div class="item">
  <a href="item">
      <img class="img-responsive" src="<c:url value="resources/carousel-omega.jpg"/>" alt="omega">
     </a>
       <div class="carousel-caption">
      <h3 style="color:white">THE SEAMASTER PLANET OCEAN "DEEP BLACK" COLLECTION</h3>
      <i style="color:grey">By combining a GMT model with a diving watch,  
       OMEGA has created a stand-alone collection of "Deep Black" watches that are 
      truly state-of-the-art.</i>
      
       
       </div>
    </div>

    <div class="item">
    <a href="item">
      <img class="img-responsive" src="<c:url value="resources/carousel-breguet.jpg"/>" alt="breguet">
      </a>
     <div class="carousel-caption" >
      <h3 style="color:white">PRE-BASEL 2017</h3>
       <i style="color:grey">Clearly visible front and centre of the watch, the barrel is hand-engraved with a
       rosette motif and overlapped at 12 o clock by a dainty offset dial</i>
     </div>
    </div>
    
   </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-menu-left" aria-hidden="true" style="visibility:hidden"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-menu-right" aria-hidden="true" style="visibility:hidden"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!--------------------------------------------------CONTAINERS -------------------------------------------------------------------->
 <div class="container text-center">    
   <h3>Our Collections</h3><br> 
  <div class="row">
     <div class="col-sm-4">
     <a href="item">
      <img class="img-responsive" src="<c:url value="resources/Breguet2.jpg"/>" style="width:100%" alt="Image">
     </a> 
    
      <h3>Breguet</h3>
      </div> 
    
     <div class="col-sm-4">  
     <a href="item">
      <img class="img-responsive" src="<c:url value="resources/Omega.jpg"/>" style="width:100%" alt="Image">
       </a> 
      <h3>Omega</h3>   
     </div> 
    
    <div class="col-sm-4"> 
     <a href="item"> 
       <img class="img-responsive" src="<c:url value="resources/Rolex4.jpg"/>" style="width:100%" alt="Image">
       </a>
     <h3>Rolex</h3> 
       </div>
      
     </div> 
   </div> 
<br>
<!----------------------- FOOTER -------------------------------------------------------------->
<nav class="navbar navbar-inverse" style="margin: 150px 0px 0px 0px;color: white">
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