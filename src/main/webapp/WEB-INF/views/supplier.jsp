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

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<title>Supplier Page</title>
<style>
body{ 
background-image: url(resources/back19.jpg);
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
color:		#F5F5DC;
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
</style>
</head>
<!---------------------------------------HEADER----------------------------------------------------------------->
<body>
<nav class="navbar navbar-inverse" >

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

<!--------------------------------------ADD SUPPLIER TABLE--------------------------------------------------------------->

<div class="nav navbar-nav" align="left" style="margin: 50px 0px 0px 50px" >
<a href="admin" class="btn btn-info btn-lg" style="font-size:15px;" ><span style="font-size:15px;" class="glyphicon glyphicon-arrow-left"></span>  BACK</a>
 </div>

<div class="container"  align="center" style="margin: 40px 0px 0px 500px">
<div class="col-md-4">
  <div class="row-fluid">
   <div class="span12">
   <!-- <h4 style="color:#F5F5DC;margin:20px 100px 0px 200px">SUPPLIER</h4> -->
<center><h2 style="color:white">ADD SUPPLIER</h2></center>
<c:url var="addAction"  value="/supplier/add"></c:url>
<br>
<hr class="colorgraph"> 

<form:form action="${addAction }" commandName="supplier" >

		<form:label style="color:white" path="sid"><spring:message text="ID"/></form:label>
		<br>
		<c:choose>
			<c:when test="${!empty supplier.sid }">
				<form:input class="form-control" style="border:0.25px solid black"  path="sid"  placeholder="Can't be modified" disabled="true" readonly="true"/>
			</c:when>
			<c:otherwise>
				<form:input class="form-control" style="border:0.25px solid black"  path="sid" placeholder="Enter Supplier ID" pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/>
				</c:otherwise>
				</c:choose>
				<form:input path="sid" hidden="true"/>
				<br>
				<hr class="colorgraph"> 
				
				<form:label style="color:white" path="sname"> <spring:message text="NAME"/></form:label>
				<form:input class="form-control" style="border:0.25px solid black"  path="sname" placeholder="Enter Supplier Name" required="true" />
				<br>
				<hr class="colorgraph"> 
				
				
				<form:label style="color:white" path="saddress" ><spring:message text="ADDRESS"/></form:label>
				<form:input  class="form-control" style="border:0.25px solid black"  path="saddress" placeholder="Enter Supplier Address" required="true"/>
				<br>
				<hr class="colorgraph"> 
				
					
				<form:label style="color:white" path="sphonenumber" ><spring:message text="PHONE NO"/></form:label>
				<form:input class="form-control" style="border:0.25px solid black"  path="sphonenumber"  placeholder="Enter Supplier Phonenumber" required="true"/>
				<br>
				<hr class="colorgraph"> 
				
				
				<td align="right" colspan="2"><c:if test="${!empty supplier.sname }">
									<input type="submit" style= "align:middle" class="btn btn-primary btn-md" value="<spring:message text="EDIT"/>"/>
								<br>
								</c:if>
								<c:if test="${empty supplier.sname }">
									<input type="submit" style= "align:middle" class="btn btn-primary btn-md" value="<spring:message text="ADD"/>"/>
								<br>
								</c:if>
								

</form:form>
</div>
	</div>
	</div>
	</div>
	
<!----------------------------------------------------SUPPLIER LIST------------------------------------------------------------------------>
<br>
<br>
<br>
<div class="container">
<center><h2>SUPPLIER LIST</h2></center>
<c:if test="${!empty supplierList }">
 <div class="table-responsive">  
	<table  class="table table-hover"border="10">
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>ADDRESS</th>
				<th>PHONE NUMBER</th>
				<th>EDIT</th>
				<th>DELETE</th>
			</tr>
					<c:forEach items="${supplierList}" var="supplier">
					
				<tr> 			
					<td>${supplier.sid}</td>
					<td>${supplier.sname}</td>
					<td>${supplier.saddress}</td>
					<td>${supplier.sphonenumber}</td>
					<td><a href="<c:url value='supplier_edit-${supplier.sid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td><a href="<c:url value='supplier/remove/${supplier.sid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
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