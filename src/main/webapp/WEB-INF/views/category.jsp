<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<title>Category Page</title>

<style>
body{ 
background-image: url(resources/back22.jpg);
background-size:center;                      
    background-repeat:repeat;
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
h2,text{
font-family: "Times New Roman";
font-weight: bold;
font-color:black;
}

h3{
color:#F5F5DC;
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
input[type=text] {
    background-color: black;
    color: white;
}

</style>
</head>
<!---------------------------------------HEADER----------------------------------------------------------------->
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-inverse">

<div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
		<li><a href="home"> <span class="glyphicon glyphicon-home"></span> HOME</a></li>
     </ul>
    
    
    <ul class="nav navbar-nav">
      	<li><a href="aboutus"><span class="glyphicon glyphicon-info-sign"></span> ABOUT US </a></li>
      	<li><a href="contactus"> <span class="glyphicon glyphicon-earphone"></span> CONTACT US </a></li> 
      	<li class="divider-vertical"></li>
    </ul>
     
    <ul class="nav navbar-nav navbar-right">
        	<li><a style="color:#F5F5DC">HELLO ${pageContext.request.userPrincipal.name}</a></li>
       		<li><a  style="margin:0px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> LOG OUT</a></li>
    </ul>
    
  </div>
  
</nav>


<!--------------------------------------ADD CATEGORY TABLE--------------------------------------------------------------->
<div class="nav navbar-nav" align="left" style="margin: 50px 0px 0px 50px" >
<a href="admin" class="btn btn-info btn-lg" color="white" style="font-size:15px;color:black" ><span style="font-size:15px;color:black" class="glyphicon glyphicon-arrow-left"></span> BACK</a>
 </div>

<div class="container" align="center" style="margin: 40px 0px 0px 500px" >
<div class="col-md-4">
  <div class="row-fluid">
  
  <!-- <h4 style="color:#F5F5DC;margin:20px 0px 0px 550px">CATEGORY</h4> -->
  
   <center><h2 style="color:white">ADD CATEGORY</h2></center>
<c:url var="addAction"  value="/category/add"></c:url>
<hr class="colorgraph"> 
	<form:form action="${addAction }" commandName="category" >
	
		<form:label style="color:white" path="cid"><spring:message text="ID"/></form:label>
		<c:choose>
		
			<c:when test="${!empty category.cid }">
		<form:input class="form-control" style="border:0.25px solid black" path="cid" disabled="true" readonly="true"/>
			</c:when>
			<c:otherwise>
		<form:input class="form-control" style="border:0.25px solid black" path="cid" placeholder="Enter Category ID"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/>
				
		<br>
		<hr class="colorgraph"> 
				</c:otherwise>
				</c:choose>
	
	
				
				<form:input path="cid" hidden="true"/>
				
				<form:label style="color:white" path="cname"> <spring:message text="NAME"/></form:label>
        		<form:input class="form-control" style="border:0.25px solid black" placeholder="Enter Category Name" path="cname" required="true" />
				
				<br>
				<hr class="colorgraph"> 
				
				<form:label style="color:white" path="cdescription" ><spring:message text="DESCRIPTION"/></form:label>
				<form:input class="form-control" style="border:0.25px solid black" placeholder="Enter Category Description" path="cdescription" required="true"/>
				
				<br>
				<hr class="colorgraph"> 
				
				<c:if test="${!empty category.cname }">
					<input align="middle" class="btn btn-primary btn-md" type="submit" value="<spring:message text="EDIT"/>"/>
						</c:if>
								<c:if test="${empty category.cname }">
									<input align="middle"  class="btn btn-primary btn-md" type="submit" value="<spring:message text="ADD"/>"/>
								</c:if>
								
								
</form:form>


</div>
</div>
</div>
	
<!----------------------------------------------------CATEGORY LIST------------------------------------------------------------------------>
<br>
<br>
<br>
<div class="container">
<center><h3>CATEGORY LIST</h3></center>
<br>
<c:if test="${!empty categoryList}">
 <div class="table-responsive">  
	<table class="table table-hover" align="center" border="10" >
			<tr>
				<th>ID</th>
				<th >NAME</th>
				<th>DESCRIPTION</th>
				<th>EDIT</th>
				<th>DELETE</th>
			</tr>
					<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.cid}</td>
					<td>${category.cname}</td>
					<td>${category.cdescription}</td>
					<td><a href="<c:url value='category_edit-${category.cid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td><a href="<c:url value='category/remove/${category.cid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</c:if>
	</div>
<!----------------------- FOOTER -------------------------------------------------------------->

<nav class="navbar navbar-inverse" style="color: white;margin: 150px 0px 0px 0px">
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