<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring Mvc WebFlow Demo</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
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
        <!-- <li><a href="aboutus">AboutUs</a></li>
       
       
            <li><a href="toysgallery">Gallery</a></li>
            
          </ul>
        </li> -->
      </ul>
<ul class="nav navbar-nav navbar-right">
							
                           <li><a href="memberShip"><span class="glyphicon glyphicon-user-name"></span> SIGNUP</a></li>
<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
     </ul>
     
    </div>
  </div>
</nav>
  
	</head>
 <style>
body{
background-image:url("<c:url value='/resources/images/pox.jpg'/>");
background-repeat:no-reprat;
background-size:cover;
}
</style>
 
	<body><center>
		<div class="container-fluid">
		 <div class="row">
			<fieldset>
				<!-- <legend>Become Member</legend>
		 -->		<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
				 
				  <div class="form-group">
				<%-- <a href="${flowExecutionUrl}&_eventId_home">NEW USER</a> --%>
				<sf:form modelAttribute="userBean"><br />
					<sf:label path="name">UserName:</sf:label>
					<div class="input-group">
					<sf:input path="name" class="form-control" />
					</div>
					
					
					
					<!-- to display validation messages -->
						<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="emailid">Email Id: </sf:label>
					<div class="input-group">
					<sf:input path="emailid" class="form-control" />
					</div>
					</div>
					</div>
					</div>
					
					
					</div>
					<div class="container-fluid">
					<div class="row">
			
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="password">password: </sf:label>
					<div class="input-group">
					<sf:input path="password" type="password" class="form-control" />
					</div>
					</div>
					</div>
					<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="address">address: </sf:label>
					<div class="input-group">
					<sf:input path="address" class="form-control" />
					</div>
					</div>
					</div>
					</div>
					</div>
					</div>
					<div class="container-fluid">
					<div class="row">
					
				  <div class="form-group">
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<sf:label path="mobile">mobile number: </sf:label>
					<div class="input-group">
      					<sf:input path="mobile" class="form-control"  />
      					</div>
					</div></div>
					</div>
					</div>
					
					</div>
					<!-- <div class="container-fluid">
					<div class="row">
					<div class="col-lg-6">
				  <div class="form-group"> -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<input name="_eventId_submit" type="submit" value="Register" /><br />
				</sf:form>
			</fieldset>
			</div>
		</div>
		</center>
	</body>
</html>