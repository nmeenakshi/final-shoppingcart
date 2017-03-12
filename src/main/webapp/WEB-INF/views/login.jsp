<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!--  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html >
<html>
<head>
<!-- <meta name="viewport" http-equiv="Content-Type" content="text/html; charset=ISO-8859-1;width=device-width, initial-scale=1" > -->
<!-- <title>Insert title here</title>   -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
body
{ 
	background-image:url(resources/rolex2.jpg); 
	background-size:cover;                      
    background-repeat:no-repeat;
    background-position:fixed;

 } 
.navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

    

</style>
<!-----------------------------HEADER---------------------------------------------------------------------------------------------------->
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
			</ul>
			<ul class="nav navbar-nav navbar-right">
       <c:if test="${pageContext.request.userPrincipal.name  == null}">
       <li><a  style="margin:0px 0px 0px 0px" href="<c:url value="register" />"><span class="glyphicon glyphicon-user"></span> SIGN UP</a></li>
       </c:if>
     </ul>
			
     	</div>
     	
  </div>
  
</nav>


 
<!-------------------------------LOGIN FIELDS-------------------------------------------------------------------------------->   
   <div class="container" style="align:center; margin: 150px 0px 0px 100px">
   	<div class="row">
    	<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-4 col-md-offset-3">
    
    <form  action="<c:url value='j_spring_security_check'/>"  method="POST" role="form">
    
       <c:if test="${not empty loginerror}">
       <div class="alert alert-danger">
       		<p class="loginerror" style="align:center">${loginerror}</p>
       		</div>
       </c:if>
       
      
       <c:if test="${not empty loginmsg}">
       	<div class="alert alert-success">
       		<p class="loginmsg" style="align:center">${loginmsg}</p>
       	</div>
       </c:if>
       
       
       <!--  style="background-color:black;color:white"-->
       
       
          <h2 style="color:#000000">Login Form</h2>
	     <hr class="colorgraph"> 
        <div class="row">
				<div class="col-sm-12 ">
					<div class="form-group">
					 	<div class="input-group">
					 	 <span class="input-group-addon"><i class="glyphicon glyphicon-user" style="color:black;"></i></span> 
						<input  type="text"  name="username" id="name" class="form-control input-lg" placeholder="Username" tabindex="1" required="true" />
						</div>
    				</div>
				</div>
		</div>
		
		<div class="row">
				<div class="col-xs-12">
					<div class="form-group">
						<div class="input-group">
					<span class="input-group-addon"><i class="glyphicon glyphicon-lock" style="color:black;"></i></span>
						<input  type="password"  name="password" id="password" class="form-control input-lg" placeholder="Password" tabindex="2" required="true" />
						</div>
					</div>
				</div>
		</div>
		
		<hr class="colorgraph"> 
 			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="Submit" class="btn btn-primary btn-block btn-lg" tabindex="7">
				</div>
			</div>

		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

			
    </form>
    </div>
   </div>
  </div>
<!------------------------------------ FOOTER -------------------------------------------------------------->
<nav class="navbar navbar-inverse navbar-fixed-bottom" style="color: white;margin: 350px 0px 0px 0px">
 <div class="row-sm-1">

<div class="col-md-4">
 <img src="<c:url value="resources/american-express.jpg"/>" style="padding:10px"></img>
<img src="<c:url value="resources/master-card.jpg"/>"style="padding:10px"></img>
<img src="<c:url value="resources/visa.jpg"/>"style="padding:10px"></img> 
</div>

 <div class="col-md-4"> 
 <p align="center" style="color: white">All Rights Reserved &reg</p>
 <p align="center" style="color: white">&copy 2017-2038,wesitename</p>
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

