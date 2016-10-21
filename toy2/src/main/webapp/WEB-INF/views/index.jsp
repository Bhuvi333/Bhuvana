<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bhuvi</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body{
background-image:url("<c:url value='/resources/image/ka9.jpg'/>");
background-repeat:no-reprat;
background-size:cover;
}
</style>
</head>


</br>


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
        <li class="active"><a href="#">Home<span class="sr-only">(current)</span></a></li>
        <li><a href="aboutus">AboutUs</a></li>
               
        
       
                   
            <li><a href="toysgallery">Gallery</a></li> 
          
          
      </ul>
      
<ul class="nav navbar-nav navbar-right">
<li><form action="logout" id="logout" method=post>
 
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
              <h2>Welcome : ${pageContext.request.userPrincipal.name} |
                                <a href="javascript:document.getElementById('logout').submit()">Logout</a></h2> 
                 </c:if> 
</li>	

  		<li><a href="adminlogin"><span class="glyphicon glyphicon-admin-log-in"></span> ADMIN</a></li>				
 <li><a href="memberShip"><span class="glyphicon glyphicon-user-name"></span> SIGNUP</a></li>
<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
<li><a href="edu">Cart</a></li>


     </ul>
     
    </div>
  </div>
</nav>
</div></br>
  <p>Toys World</p>
</div>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li> 
      <li data-target="#myCarousel" data-slide-to="6"></li> 
      <li data-target="#myCarousel" data-slide-to="7"></li> 
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
<center>
        <img src="<c:url value='/resources/image/getinspired2.jpg'/>" alt="Chania" width="460" height="345">
</center>
      </div>

      <div class="item">
        <center>
       <img src="<c:url value='/resources/image/e1.JPG'/>" alt="Chania" width="460" height="345">
        </center>
      </div>
    
      <div class="item">
        <center>
        <img src="<c:url value='/resources/image/e2.jpg'/>" alt=flower" width="460" height="345">
        </center>
      </div>

      <div class="item">
        <center>
        <img src="<c:url value='/resources/image/k1.jpg'/>"  alt="Flower" width="460" height="345">
         </center>
      </div>
 <div class="item">
        <center>
        <img src="<c:url value='/resources/image/k2.jpg'/>"  alt="Flower" width="460" height="345">
        </center>
      </div>
 <div class="item">
       <center><img src="<c:url value='/resources/image/k3.jpg'/>" alt="Flower" width="460" height="345"></center> 
      </div>
      <div class="item">
       <center><img src="<c:url value='/resources/image/toy.jpg'/>" alt="Flower" width="460" height="345"></center> 
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div id="advantages">

                <div class="container">
                    <div class="same-height-row">
                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon"><i class="fa fa-heart"></i>
                                </div>

                                <h3><a href="#">We love our customers</a></h3>
                                <p>We are known to provide best possible service ever</p>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon"><i class="fa fa-tags"></i>
                                </div>

                                <h3><a href="#">Best prices</a></h3>
                                <p>You can check that the height of the boxes adjust when longer text like this one is used in one of them.</p>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="box same-height clickable">
                                <div class="icon"><i class="fa fa-thumbs-up"></i>
                                </div>

                                <h3><a href="#">100% satisfaction guaranteed</a></h3>
                                <p>Free returns on everything for 3 months.</p>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>

</body>
</html>

