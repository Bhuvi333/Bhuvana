<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Bhuvi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

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
       <!--  <li><a href="aboutus">AboutUs</a></li>
        <li class="dropdown">
          
            <li><a href="toysgallery">Gallery</a></li>
                     </ul>
        </li> -->
      </ul>
</div>
</head>
<body>
<div class="img">
<c:forEach items="${Products}" var="p">
<form commandName="prod">

 
    <img src="<c:url value="${p.imgs }"/>" width="300" height="200">
  </a>
  <div class="desc">${p.price}</div>
  <div class="row" align="left"><button class="btn btn-default"><a commandName="prod" href="addToCart?id=${p.pid}">To Cart</a> </button></div>
</div>
</form>
</c:forEach>


</body>
</html>


    