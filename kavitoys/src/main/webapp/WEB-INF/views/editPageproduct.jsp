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
<title>PRODUCT DETAIL</title>
</head>
<body>

<center>
		
<table border="2">
	<form:form action="./updateProduct"  commandName="prod" method="POST">
		<center>	
	
	<tr>
			<td>Product Id</td>
			
			<td><form:input path="pid" value="${ProductObject.pid}"  readonly="true"/></td>
		</tr>
		<tr>
			<td>Product Name</td>
			
			<td><form:input path="name" value="${ProductObject.name}"/></td>
		</tr>
		<br>
		<tr>
			<td>Product Description</td>
			<td><form:input path="description" value="${ProductObject.description}"/></td>
		</tr>
		<br>
		<tr>
			<td>Product Price</td>
			<td><form:input path="price" value="${ProductObject.price}"/></td>
		</tr>
		<td>Image</td>
			<td><form:input path="imgs" value="${ProductObject.imgs}"/></td>
		</tr>
		</table>
		
		<br>
		
			<td colspan="2"><input type="submit" name="action" value="update" />
			<input type="reset" value="Reset" onclick="addproduct"/>
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
			<th>PRICE</th>
			<th>Image</th>
		</tr>
			

			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.pid}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
			 		<td>${product.price}</td>
			 		<td>${product.imgs}</td>
						<td><a href="editPage?id=${product.pid}"><button>Edit</button></a>
					<td><a href="deleteProduct?id=${product.pid}"><button>delete</button></a>
					
				</tr>

			</c:forEach>
		</table>
		</center>
		
</body>
</html>