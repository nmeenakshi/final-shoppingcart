<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>ABOUT US</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body{ 
background-image: url(resources/back-aboutus1.jpg); 
background-size:cover;                      
    background-repeat:no-repeat;
    
 } 

</style>
</head>
<!--------------------------------- HEADER ------------------------------------------------------>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">

<div class="container-fluid">
      
    <div class="navbar-header">
    </div>
    
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="home"> <span class="glyphicon glyphicon-home"></span>  HOME</a></li>
				
				<li><a href="contactus"> <span class="glyphicon glyphicon-earphone"></span>  CONTACT US</a></li>
				
			</ul>
			
			  <ul class="nav navbar-nav navbar-right">  
      			<li class="divider-vertical"></li>
					
				<li><a  style="margin:0px 0px 0px 0px" href="<c:url value="register" />"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
				<li><a  style="margin:0px 0px 0px 0px" href="<c:url value="login" />"><span class="glyphicon glyphicon-log-in"></span> LOG IN</a></li>
				
								
     		</ul>
     	
     	</div>
  </div>
  </nav>
<!------------------------------- About us ------------------------------------->
  <div class="container-fluid bg-3 text-center" style="color:black">
  <br>
  <br> 
  <div class="row">
     <div class="col-sm-4">
     <h2>WORLD OF ROLEX</h2>
     <h1>HISTORY OF ROLEX</h1>
     <p>Pioneer of the wristwatch since 1905, Rolex is at the origin of landmark innovations in watchmaking,
     including the first waterproof wristwatch - the Oyster - and the Perpetual rotor self-winding mechanism.
      For over a century, Rolex watches have accompanied explorers and achievers around the world,
     from the top of the highest mountains to the deepest reaches of the ocean.</p>
      <img src="resources/back9.jpeg" class="img-responsive margin" style="width:100%" alt="Image">
      </div> 
      
     <div class="col-sm-4">
     <h2>WORLD OF OMEGA</h2>
     <h1>GREAT MOMENTS IN TIME AROUND THE WORLD AND BEYOND</h1>
     <p>For more than 160 years, our timepieces have recorded the planets history. 
     They have also served with distinction in space, in the oceansdepths and on the wrists of world leaders,
     explorers and men and women who appreciate OMEGA blend of performance and design.</p>
     <img src="resources/omega-pic.jpg" class="img-responsive margin" style="width:100%" alt="Image">
      </div> 
   
     <div class="col-sm-4">
     <h2>WORLD OF BREGUET</h2>
     <h1>WATCHMAKING PRESTIGE</h1>
     <p>Abraham-Louis Breguet leaves his home in Neuchatel as a teenager, and heads for Versailles and Paris for a watchmaking apprenticeship. 
     In 1775, he opens his workshop in the Ile de la Cite in Paris, with the help of Abbot Joseph-Francois Marie,
      who takes him under his wings and introduces young Breguet to the French Court.
      French aristocracy quickly become Breguets clientele. 
      Forced to leave France during the dark hours of the Revolution, he returns in 1795 to rebuild his business.</p>
      <img src="resources/breguet-pic.jpg" class="img-responsive margin" style="width:100%" alt="Image">
      </div> 
   </div> 
   
</div>
<br>
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