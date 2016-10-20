<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
body{
background-image:url("<c:url value='/resources/image/ka9.jpg'/>");
background-repeat:no-reprat;
background-size:cover;
}
</style>
	
<title>CATEGORY DETAIL</title>
<style>
.custab{
    border: 1px solid #ccc;
    padding: 5px;
    margin: 5% 0;
    box-shadow: 3px 3px 2px #ccc;
    transition: 0.5s;
    }
.custab:hover{
    box-shadow: 3px 3px 0px transparent;
    transition: 0.5s;
    }
</style>

</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
   
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Ishiya</a>
    </div>

   
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index">Home<span class="sr-only">(current)</span></a></li>
        <!-- <li><a href="aboutus">AboutUs</a></li>
       
        
            <li><a href="toysgallery">Gallery</a></li>
            
          </ul>
        </li>
      </ul>
 -->
 <ul class="nav navbar-nav navbar-right">
							
                          
     </ul>
     
    </div>
  </div>
</nav>


<center>
<table border="2">
	<form:form action="./savecategory"  commandName="cat" method="POST">
		
		<tr>
			<td>category Name</td>
			<td><form:input path="name" /></td>
		</tr>
		<br>
		<tr>
			<td>Category Description</td>
			<td><form:input path="description" /></td>
		</tr>
		<br>
		<%-- <tr>
			<td>Category Price</td>
			<td><form:input path="price" /></td>
		</tr>
		 --%> <%-- <tr>
			<td>Category Image</td>
			<td><form:input type="file" path="file" name="file"/>${message}</td>
			</tr><tr>
			<td><form:hidden path="imgs" value="${imgs}"/></td>
		 </tr> --%>
		</table>
		
		<br>
		
			<td colspan="2">
			<input type="submit" name="action" value="add" />
			<input type="reset" value="Reset" onclick="addcategory"/>
			</td>
			</form:form>
		
		
		<br>
		
		<a href="listcategory">List Category</a>
		
		<table border="2">
		<div class="row col-md-6 col-md-offset-2 custyle">
    <table class="table table-striped custab">
		
		
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>Edit</th>
			<th>Delete</th>
			
			<%-- <%String ss=(String)request.getAttribute("img");
			out.println(ss);%> --%>


			
			  <%-- <c:set var="m" value="${requestScope.img}"/>  --%>
			  
			 	<c:forEach items="${categoryList}" var="category">
			 	<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
			 		
			 		<%--  <td><img src="<c:url value="${sup.imgs}"/>" height="100px" width ="100px" ></td>
 --%>					 	<td><a href="editPagecategory?id=${category.id}"><button>Edit</button></a>
					<td><a href="deletecategory?id=${category.id}"><button>delete</button></a>
</td>
</tr>
			</c:forEach>
		</table>

		</center>
		</div>
		
</body>
</html>