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
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>PRODUCT DETAIL</title>
</head>
<body>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.3/angular.min.js"></script>

<script>
var v=${gdata};
angular.module('myApp',[]).controller('addproductController',function($scope)
		{
	//console.log(v);
	$scope.productList=v;
		});
</script> 

<center>
		
		
		<br>
		
<div class="container" ng-app="myApp" ng-controller="addproductController">
<input type="text" class="form-control" placeholder="search...." ng-model="sr"/><br>		

		<table border="2">
		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>PRICE</th>
			<th>image</th>
			<th>Edit</th>
			<th>Delete</th>
	</tr>
			<%-- <%String ss=(String)request.getAttribute("img");
			out.println(ss);%> --%>


			
			  <%-- <c:set var="m" value="${requestScope.img}"/>  --%>
			  
			 	
			 	<tr ng-repeat="prod in productList|filter:sr">
					<td>{{prod.pid}}</td>
					<td>{{prod.name}}</td>
					<td>{{prod.description}}</td>
			 		<td>{{prod.price}}</td>
			 		 <td><img src="<c:url value="{{prod.imgs}}"/>" height="100px" width ="100px" ></td>
					 	<td><a href="editPageproduct?id={{prod.pid}}"><button>Edit</button></a>
					<td><a href="deleteProduct?id={{prod.pid}}"><button>delete</button></a>
</td>
</tr>
		</table>
</div>
		</center>
		</div>
		
</body>
</html>