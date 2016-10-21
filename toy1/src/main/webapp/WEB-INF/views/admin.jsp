<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bhuvi</title>
<link href="style.css" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		  <link href="css/bootstrap.min.css" rel="stylesheet">
		  <link href="css/business-casual.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<head>
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
        <li><a href="aboutus">AboutUs</a></li>
       
        
            <li><a href="toysgallery">Gallery</a></li>
            
      </ul> 

<ul class="nav navbar-nav navbar-right">
<li><a href="memberShip"><span class="glyphicon glyphicon-user-name"></span> SIGNUP</a></li>
<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
     </ul>
     
    </div>
  </div>
</nav>

  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
body{
background-image:url("<c:url value='/resources/image/ka5.jpg'/>");
background-repeat:no-reprat;
background-size:cover;
}
</style>
  
</head>

<body><center>
<h2>Admin</h2></center>
<div class="container">
  
  <br>
<br>
<br>
<br>
<br>
  

  
  <button type="button" class="btn btn-primary "><a href="addproduct" style="color:white;">Add Product</a></button>
<br></br>

   <button type="button" class="btn btn-primary "><a href="addsupplier" style="color:white;">Add Supplier</a></button>
<br>
  
</br>
  
 <button type="button" class="btn btn-primary "><a href="addcategory" style="color:white;">Add Category</a></button>
 
<br>  

  

  
  
  
</div>

</body>
</html>

    