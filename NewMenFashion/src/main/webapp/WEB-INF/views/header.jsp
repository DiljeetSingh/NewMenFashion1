<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Project</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="Resources/bootstrap/js/bootstrap.min.js"></script>
  <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
  <script>
  $(function(){
	  $("#addClass").click(function () {
	            $('#qnimate').addClass('popup-box-on');
	              });
	            
	              $("#removeClass").click(function () {
	            $('#qnimate').removeClass('popup-box-on');
	              });
	    })</script>
  <link rel="stylesheet" href="Resources/css/header.css">

<div  style="margin-top:-50px;margin-bottom:-50px;"  class="jumbotron">
<div class="container-fluid">
        <div class="row">           
            <div style="background-color:#000000;margin-bottom:0px;" class="col-md-4">
           <a href="#"><img style="width:500px;height:200px;margin-top:0px;margin-left:-2px;margin-right:-2px;"class="img-responsive"src="Resources/Images/baner.jpg"></center></a>
           </div>
            <div style="background-color:#000000;margin-bottom:0px;" class="col-md-4">
           <a href="#"><img style="width:500px;height:200px;margin-top:0px;margin-left:-2px;"class="img-responsive"src="Resources/Images/logo.png"></center></a>
           </div>
           <div style="background-color:#000000;margin-bottom:0px;" class="col-md-4">
           <a href="#"><img style="width:500px;height:200px;margin-top:0px;margin-left:-2px;margin-right:32px;"class="img-responsive"src="Resources/Images/baner1.jpg"></center></a>
           </div>
           </div>
           </div>
           </div>
     <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<body>


<nav class="navbar navbar-inverse"style="background-color:black;"> 
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
         </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>
        <li><a href="#">Page 2</a></li>
        <li><a href="#">Page 3</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
         <c:url var="url" value="/admin/product/productform"></c:url>
      <c:if test="${pageContext.request.userPrincipal.name !=null }">
      <security:authorize access="hasRole('ROLE_ADMIN')">
   <li><a href="${url }">Add New Product</a></li>
   </security:authorize>
   
   <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
   
   <li><a href="${allProducts}">Browse all products</a></li>
   
 
			
			<li><a href="">welcome ${pageContext.request.userPrincipal.name }</a></li>
</c:if>			
			<c:if test="${pageContext.request.userPrincipal.name ==null }">
			<li><a href="<c:url value="/login"></c:url>"><span class="glyphicon glyphicon-log-in"></span> SignIn</a></li>
			<li> <a href="<c:url value="/register"></c:url>"><span class="glyphicon glyphicon-user"></span>Register</a></li>
			</c:if>
			
			<c:if test="${pageContext.request.userPrincipal.name !=null }">
			<li><a href="<c:url value="/j_spring_security_logout"></c:url>">logout</a></li>
			</c:if>
			<li>
			<security:authorize access="hasRole('ROLE_USER')">
        <li><a href="<c:url value="/cart/getCartId"></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>    Shopping Cart:0</a></li>
        </security:authorize>
  </div>
</nav>
   