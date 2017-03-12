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


<title>SECURE PAYMENT</title>
<style>
body{
background-image: url(resources/back14.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;

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
<form action="thanks" >
<div class="container" style="align:center; margin: 70px 10px 500px 10px">
<div class="panel panel-info" style="background-color:black;border:0.25px solid black">
                        <div class="panel-heading" style="background-color:grey"><i style="font-size:20px;color:white"> Secure Payment</i></div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12"><strong style="color:white">Card Type:</strong></div>
                                <div class="col-md-12">
                                    <select id="CreditCardType" name="CreditCardType" class="form-control">
                                        <option value="5">Visa</option>
                                        <option value="6">MasterCard</option>
                                        <option value="7">American Express</option>
                                        <option value="8">Discover</option>
                                    </select>
                                    <br>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong style="color:white">Credit Card Number:</strong></div>
                                <div class="col-md-12"><input type="text" class="form-control" required="true"  pattern="[0-9]{13,19}$" title="only numbers allowed[min-13 max-19]"/><br></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong style="color:white">Card CVV:</strong></div>
                                <div class="col-md-12"><input type="text" class="form-control" required="true"  pattern="[0-9]{3,4}$" title="only numbers allowed[min-3 max-4]"/><br></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <strong style="color:white">Expiration Date</strong>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <select class="form-control" name="">
                                        <option value="">Month</option>
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                </select>
                                <br></div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <select class="form-control" name="">
                                        <option value="">Year</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                </select>
                                <br></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <span style="color:white">Pay secure using your credit card.</span>
                                </div>
                                <div class="col-md-12">
                                    <img src="<c:url value="resources/american-express.jpg"/>" style="padding:10px"></img>
                                        <img src="<c:url value="resources/master-card.jpg"/>"style="padding:10px"></img>
                                         <img src="<c:url value="resources/visa.jpg"/>"style="padding:10px"></img>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            
                                <div class="col-xs-12 row text-center">
                                 <input type="submit" value="submit" class="btn btn-success btn-lg">	
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