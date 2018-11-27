<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>WELCOME TO SHOPPING</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="navbar.jsp"></jsp:include>

<div class="container">
    
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <img src="<c:url value='/resources/images/c4.jpg'></c:url>" style="width:100%;" >
      </div>

      <div class="item">
        <img src="<c:url value='/resources/images/c2.jpg'></c:url>" style="width:100%;" >
      </div>
    <div class="item">
        <img src="<c:url value='/resources/images/Google.jpg'></c:url>" style="width:100%;" >
      </div>
      <div class="item">
        <img src="<c:url value='/resources/images/d2.jpeg'></c:url>" style="width:100%;" >
      </div>
      <div class="item">
 <img src="<c:url value='/resources/images/c5.jpg'></c:url>" style="width:100%;" >
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<br></br>
<h2><b><i>Welcome to our Page!  We are a full service branded promotional products company.  We will help your company promote, motivate and inspire with creative products and ideas.  Feel free to browse our site and search for your perfect promotional product.</i></b></h2>

 <div class="container-fluid">
 <div class="row">
 <c:if test="${not empty productlist}">
    <c:forEach items="${productlist}" var="p">
    <div class="col-sm-4" ><img src="<c:url value='/resources/images/${p.productID}.jpg'></c:url>" style="width:100%;" >
    <br/>
    <center>Name:${p.productName}<br/>Rs.${p.productPrice}<br/><a href="viewproduct/${p.productID}"><button type="button" class="btn btn-primary">Add to cart</button></a></center>
    </div>
    
   </c:forEach>
   </c:if>
    <c:if test="${empty productlist}">
    <h1><b><i>Currently no products available under this category!!! We will upload soon</h1>
    </c:if>
    
  </div>
  
 
  
</body>
</html>
