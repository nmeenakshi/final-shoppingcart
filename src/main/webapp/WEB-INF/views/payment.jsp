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


<title>SHIPPING ADDRESS</title>
<style>
body{
background-image: url(resources/back6.jpg);
background-size:cover;                      
    background-repeat:no-repeat;

}
th
{
    color:white;
    background-color:black;
    
}

table, th, td 
{
    border: 1px solid black;
    align:center;
}

h2
{
color:black;
font-family: "Times New Roman", Times, serif;
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

/* table{
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
input{
    background-color:black;
    align:center;
    color:white;
    /* font-size:120%; */
    padding: 15px;
    text-align:center;
} */

</style>
</head>

<!---------------------------------------HEADER----------------------------------------------------------------->
<body >
<nav class="navbar navbar-inverse" data-spy="affix">

<div class="container-fluid">
      
    <div class="navbar-header">
    </div>
    
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="home"> <span class="glyphicon glyphicon-home"></span>  HOME</a></li>
				<!-- <li><h4 style="color:#F5F5DC;margin:20px 100px 0px 200px">PAYMENT DETAILS</h4></li> -->
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
<!---------------------PAYMENT DETAILS--------------------------------------------------------------------------------->

<form action="makepayment" >
<div class="container" style="align:center; margin: 70px 0px 0px 0px">
           
            <div class="row cart-body" style="align:center; margin: 0px 230px 0px 0px">
                
           <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12 col-md-push-6 col-sm-push-6">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info" style="background-color:black;border:0.25px solid black">
                       <div class="panel-heading" style="background-color:grey;font-size:20px;color:white">Shipping Address</div>
                     
                           
                           <div class="panel-body">
                            
                                <div class="col-md-6 col-xs-12">
                               
                                    <strong id="one" style="color:white">First Name:</strong>
                                    <input type="text" id="firstname" class="form-control"  pattern="[A-Za-z]{4,}$" required name="name" title="only alphabets allowed [minimum 4 characters]" />
                                 <br>
                                </div>
                                <div class="span1"></div>
                                <div class="col-md-6 col-xs-12">
                                    <strong id="two" style="color:white">Last Name:</strong>
                                    <input type="text" id="lastname" class="form-control" required="" pattern="[A-Z]{1,}$" title="only UPPER CASE alphabets allowed [minimum 1 character]"/>
                                </div>
                           <br>
                            
                                <div class="col-md-12"><strong id="three" style="color:white">Address:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" id="address" class="form-control" required=""/>
                                     <br>
                                </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong id="four" style="color:white">City:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" id="city" class="form-control" required="" pattern="[A-Za-z]{2,}$" title="only alphabets allowed [minimum 2 characters]"/>
                                 <br>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong id="five" style="color:white">State:</strong></div>
                                <div class="col-md-12">
                                     <input type="text" id="state" class="form-control" required="" pattern="[A-Za-z]{4,}$" title="only alphabets allowed [minimum 4 characters]"/>
                                 <br>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong id="six" style="color:white">Zip / Postal Code:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" id="pincode" class="form-control" required="" pattern="[0-9]{6,8}$" title="only numbers allowed [range 6-8 characters]"/>
                                <br>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-md-12"><strong id="seven" style="color:white">Country:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" id="country" class="form-control" required="" pattern="[A-Za-z]{4,}$" title="only alphabets allowed [minimum 4 characters]"/>
                                 <br>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <div class="col-md-12"><strong id="eight" style="color:white">Phone Number:</strong></div>
                                <div class="col-md-12"><input type="text" id="phonenumber" class="form-control" required="" pattern="[0-9-+]{8,15}" title="allowed to use only numbers with + - symbols[min-8 , max-15]"/>
                                <br>
                                </div>
                            </div>
                             <br>
                            <div class="form-group">
                                <div class="col-md-12"><strong id="nine" style="color:white">Email Address:</strong></div>
                                <div class="col-md-12"><input type="text" id="email" class="form-control" required="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="Eg:someone@something.domain"/>
                                 <br>
                                </div>
                           </div>
                            
                        </div>
                       
                   </div>
                    <br>
                     <br>
                    <!--SHIPPING METHOD END-->
                    <!--CREDIT CART PAYMENT-->
                    
    				
    				<div class="row text-center">
    				
    				<!-- <a href="makepayment" type="submit" class="btn btn-primary btn-md" >
    				MAKE PAYMENT
    				</a> -->
    				 <input type="submit" value="submit" class="btn btn-primary btn-md"/>
    				
						 
					
     				</div>
     				</div>
     				
     				</div>
     				</div>
     				</form>
    
    
<!----------------------- FOOTER -------------------------------------------------------------->
<nav class="navbar navbar-inverse" style="margin: 250px 0px 0px 0px;color: white">
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