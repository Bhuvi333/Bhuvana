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
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>CATEGORY DETAIL</title>
</head>
<body>

<center>
		
<table border="2">
	<form:form action="./updateCategory"  commandName="cat" method="POST">
		<center>	
	
	<tr>
			<td>Category Id</td>
			
			<td><form:input path="id" value="${CategoryObject.id}"  readonly="true"/></td>
		</tr>
		<tr>
			<td>Category Name</td>
			
			<td><form:input path="name" value="${CategoryObject.name}"/></td>
		</tr>
		<br>
		<tr>
			<td>Category Description</td>
			<td><form:input path="description" value="${CategoryObject.description}"/></td>
		</tr>
		<br>
		<%-- <tr>
			<td>Category Price</td>
			<td><form:input path="price" value="${CategoryObject.price}"/></td>
		</tr> --%>
		</table>
		
		<br>
		
			<td colspan="2"><input type="submit" name="action" value="update" />
			<input type="reset" value="Reset" onclick="addcategory"/>
			</td>
			</form:form>
			</center>
		
		<br>
		<center>
		<table border="2">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>Edit</th>
			<th>Delete</th>
			<!-- <th>PRICE</th> -->
		</tr>
			

			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
						<td><a href="editPagecategory?id=${category.id}"><button>Edit</button></a>
					<td><a href="deleteCategory?id=${category.id}"><button>delete</button></a>
					
				</tr>

			</c:forEach>
		</table>
		</center>
		
</body>
</html>