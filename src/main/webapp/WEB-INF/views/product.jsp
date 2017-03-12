<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<title>Product Page</title>
<style>
body{ 
background-image:url(resources/back20.jpg); 
background-size:center; 
                     
    background-repeat:repeat;
 }
table{
	border:2.5px white;
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
}
 


/* .btn {
    background-color:#cc0052 ;
    } */
h2{
color:#F5F5DC;
font-family: "Times New Roman", Times, serif;
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
input[type=text] {
    background-color: black;
    color: white;
}
input[type=file] {
    background-color: black;
    color: white;
}
select.form-control{
background-color: black;
    color: white;

}
</style>
</head>
<!---------------------------------------HEADER----------------------------------------------------------------->
<body>
<nav class="navbar navbar-inverse  navbar-fixed-top">

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
      			<li class="divider-vertical"></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}"> 		
				<li><h4 class="text-right" style="color:#F5F5DC;margin:20px 0px 0px 0px">HELLO ${pageContext.request.userPrincipal.name}</h4></li>
				<li><a  style="margin:5px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span>  LOG OUT</a></li>
				</c:if>					
     		</ul>
     	
     	</div>
  </div>
  
</nav>
<!--------------------------------------ADD PRODUCT TABLE--------------------------------------------------------------->

<div class="nav navbar-nav" align="left" style="margin: 50px 0px 0px 50px" >
<a href="admin" class="btn btn-info btn-lg" style="font-size:15px;" ><span style="font-size:15px;" class="glyphicon glyphicon-arrow-left"></span>  BACK</a>
 </div>
 

 
<div class="container" align="center" style="align:center; margin:40px 0px 0px 500px">
<div class="col-md-4">
  <div class="row-fluid">
   <div class="span12">
   <!-- <h4 style="color:#F5F5DC;margin:20px 100px 0px 200px">PRODUCT</h4> -->
<center><h2 style="color:white">ADD PRODUCT</h2></center>
<c:url var="addAction" value="/product/add"></c:url>

<hr class="colorgraph"> 

<%-- <form:form action="${addAction}" commandName="product" method="post"> --%>
<form:form action="${addAction}" role="form" commandName="product" enctype="multipart/form-data">

		<form:label style="color:white" path="pid"><spring:message text="ID"/></form:label>
		<br>
		<c:choose>
			<c:when test="${!empty product.pid }">
				<form:input class="form-control" style="border:0.25px solid black" path="pid" disabled="true" readonly="true"/>
			</c:when>
			<c:otherwise>
				<form:input class="form-control" style="border:0.25px solid black" path="pid" placeholder="Enter Product ID"  pattern=".{4,20}" required="true" title="id should be between 4 to 20 characters"/>
				</c:otherwise>
				</c:choose>
				<form:input path="pid" hidden="true"/>
				<br>
				<hr class="colorgraph"> 
				
				<form:label style="color:white" path="pname"> <spring:message text="NAME"/></form:label>
				<form:input class="form-control" style="border:0.25px solid black" path="pname"  placeholder="Enter Product Name" required="true" />
				<br>
				<hr class="colorgraph"> 
				
				<form:label style="color:white" path="pprice" ><spring:message text="PRICE"/></form:label>
				<form:input  class="form-control" style="border:0.25px solid black" path="pprice" required="true"/>
				<br>
				<hr class="colorgraph"> 
				
				<form:label style="color:white" path="pdescription" ><spring:message text="DESCRIPTION"/></form:label>
				<form:input  class="form-control"  style="border:0.25px solid black" path="pdescription"  placeholder="Enter Product Description" required="true"/>
				<br>
				<hr class="colorgraph"> 
				
				<form:label style="color:white" path="supplier" ><spring:message text="SUPPLIER"/></form:label>
				<form:select class="form-control"  style="border:0.25px solid black" path="supplier.sname" items="${supplierList}" itemValue="sname" itemLabel="sname"/>
				<br>
				<hr class="colorgraph"> 
				
				<form:label style="color:white" path="category" ><spring:message text="CATEGORY"/></form:label>
				<form:select class="form-control"  style="border:0.25px solid black" path="category.cname" items="${categoryList}" itemValue="cname" itemLabel="cname"/>
				<br>
				<hr class="colorgraph"> 
				
				<form:label style="color:white"  path="image" ><spring:message text="IMAGE"/></form:label>
				<form:input  class="form-control"  style="border:0.25px solid black" type="file" path="image" />
				<br>
				<hr class="colorgraph"> 
				
				                <c:if test="${!empty product.pname }">
									<input style= "align:middle;" class="btn btn-primary btn-md"  type="submit" value="<spring:message text="EDIT"/>"/>
								<br>
								</c:if>
								<c:if test="${empty product.pname }">
									<input style= "align:middle" class="btn btn-primary btn-md"  type="submit" value="<spring:message text="ADD"/>"/>
								<br>
						
								</c:if>
				
</form:form>
</div>
	</div>
	</div>
	</div>
	
<!----------------------------------------------------PRODUCT LIST------------------------------------------------------------------------>
<br>	
<br>
<br>
<div class="container">

<center><h2>PRODUCT LIST</h2></center>
<c:if test="${!empty productList}">
 <div class="table-responsive">  
	<table  class="table table-hover" border=10>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>PRICE in &#8377</th>
				<th>DESCRIPTION</th>
				<th>CATEGORY NAME</th>
				<th>SUPPLIER NAME</th>
				<th>IMAGE</th>
				<th>EDIT</th>
				<th>DELETE</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.pid}</td>
					<td>${product.pname}</td>
					<td>${product.pprice}</td>
					<td>${product.pdescription}</td>
					<td>${product.category.cname}</td>
					<td>${product.supplier.sname}</td>
					<td><img width="200" height="200" src="<c:url value="/resources/images/${product.pid}.jpg"/>"></img></td>
					
					<td><a href="<c:url value='product_edit-${product.pid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td><a href="<c:url value='product/remove/${product.pid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</c:if>
	</div> 
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