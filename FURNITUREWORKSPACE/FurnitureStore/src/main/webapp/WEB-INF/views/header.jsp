
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet" />

<script src="<c:url value="/resources/js/jquery-2.2.4.min.js" />" ></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.js"/>" >
</script>

<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js"/>" >
</script>

<script type="text/javascript" src="<c:url value="/resources/js/npm.js"/>">
</script>

<script>
function formSubmit()
{
	document.getElementById("logoutform").submit();
	}
</script>

<sec:csrfMetaTags/>
<sec:csrfInput/>

<script type="text/javascript">
	$(window).scroll(function() {
	  if ($(document).scrollTop() > 50) {
	    $('nav').addClass('shrink');
	  } else {
	    $('nav').removeClass('shrink');
	  }
	});
</script>
</head>
<body>
<!--<form action="perform_logout" method="post" id="logoutform">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf_token}" />
</form>-->
<div class="container">

<nav class="navbar navbar-default" role="navigation">
<!--   <div class="container-fluid"> -->
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
         
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
         
       <li><a   href="/FurnitureStore/">Home</a></li>
      <li> <a  href="aboutus">About Us</a></li>
      <li><a href="contactus">Contact Us</a></li>
       <li> <a  href="allproducts">All Products</a></li>
       <li><a href="addproduct">Add Product</a></li>
        
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      
      <sec:authorize access="hasRole('ROLE_ADMIN')">
      	<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
         <li><a href="<c:url value="/perform_logout" />">Logout</a></li> 
     <!--   <li><a href="javascript:formSubmit()">Logout</a></li>-->
		<li><a href="<c:url value="/admin" />">Admin</a></li>  
      </sec:authorize>
      <sec:authorize access="hasRole('ROLE_USER')">
      	<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
        <li><a href="<c:url value="/perform_logout" />">Logout</a></li>
		<li><a href="<c:url value="/user" />">Cart</a></li>  
      </sec:authorize>
   
        <t:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/loginpage" />">LoginPage</a></li>
                           <li><a href="<c:url value="/register" />">Register</a></li>
                        </t:if>
   		
     
      </ul>
    </div><!-- /.navbar-collapse -->
 <!-- </div><!-- /.container-fluid -->
</nav>
 

 
</body>
</html>