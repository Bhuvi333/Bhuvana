<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>JOSH</title>
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
        <!-- <li><a href="jessieaboutus">AboutUs</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">category <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="baby">Baby Toys</a></li>
            <li><a href="edu">Educational Toys</a></li>
            <li><a href="toysgallery">Gallery</a></li>
            
          </ul>
        </li> -->
      </ul>
</div>
<style>
div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 250px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
   height: 90%;
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>
<div class="img">
<c:forEach items="${Products }" var="p">
<form commandName="prod">

 
    <img src="<c:url value="${p.imgs }"/>" width="300" height="200">
  </a>
  <div class="desc">Price $${p.price }</div>
  <div class="row" align="center"><button class="btn btn-default"><a commandName="prod" href="addToCart?id=${p.pid}">To Cart</a> </button></div>
  
</div>
</form>
</c:forEach>
<%-- 
 <div class="img">
 
    <img src="<c:url value='/resources/image/b2.jpg'/>" width="300" height="200">
  </a>
  <div class="desc">Price $1000</div>
</div>
</br>
<div class="img">
  
    <img src="<c:url value='/resources/image/k2.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $6000</div>
</div>
</br>
<div class="img">
  
    <img src="<c:url value='/resources/image/k3.jpg'/>"  width="600" height="400">
  </a>
  <div class="desc">Price $7000</div>
</div>
</br>
<div class="img">
  
    <img src="<c:url value='/resources/image/k4.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
  </br>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/image/k5.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/image/k6.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $500<</div>
</div>


<div class="img">
  
    <img src="<c:url value='/resources/images/img10.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img11.jpg'/>" width="300" height="200">
  </a>
  <div class="desc">Price $10000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img12.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $6000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img13.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $7000</div>
</div>

<div class="img">
  
    <img src="<c:url value='/resources/images/img14.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="<c:url value='/resources/images/img15.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $50000</div>
</div>
<div class="img">
  
    <img src="img16.jpg" width="600" height="400">
  </a>
  <div class="desc">Price $500<</div>
</div> --%>
 
</body>
</html>


    