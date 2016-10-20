<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <title>Ishiya</title>
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
        <li><a href="#">AboutUs</a></li>
        <li class="dropdown">
                      <li><a href="toysgallery">gallery</a></li>
                      </ul>
        </li>
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
  
    <img src="<c:url value='/resources/image/k1.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $700</div>
</div>
<div class="img">

    <img src="<c:url value='/resources/image/b3.jpg'/>" width="600" height="400">
  </a>
  <div class="desc">Price $600</div>
</div>
<div class="img">

    <img src="<c:url value='/resources/image/e1.JPG'/>" width="400" height="300">
  </a>
  <div class="desc">Price $600</div>
</div>


 <div class="img">

    <img src="<c:url value='/resources/image/e5.jpg'/>" width="400" height="300">
  </a>
  <div class="desc">Price $600</div>
</div>

 <div class="img">

    <img src="<c:url value='/resources/image/k3.jpg'/>" width="400" height="300">
  </a>
  <div class="desc">Price $600</div>
</div>

 <div class="img">

    <img src="<c:url value='/resources/image/e3.jpg'/>" width="400" height="300">
  </a>
  <div class="desc">Price $600</div>
</div>

 <div class="img">

    <img src="<c:url value='/resources/image/e4.jpg'/>" width="400" height="300">
  </a>
  <div class="desc">Price $600</div>
</div>
<div class="img">

    <img src="<c:url value='/resources/image/e5.jpg'/>" width="400" height="300">
  </a>
  <div class="desc">Price $600</div>
</div>

 
  
 </body>
</html>


    