<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 

<script src="<c:url value="/resources/js/angular.min.js" />" /></script>
<script>
		var myApp = angular.module('myApp',[]);
		myApp.controller('getData', function($scope,$http,$location)
		 { 
			$scope.searchKeyword=location.search.substr(15);
			$scope.productdata = ${product};
			//alert($scope.productdata);
		 
		 });
	
</script>

 
</head>
<body ng-app="myApp" ng-controller="getData">
<%@include file="header.jsp" %>
<div class="container">


<div class="container">
 	
	<div class="panel-heading">
		<div class="panel-title text-center">
	    	<h1 class="title">View Details</h1>
	        <hr />
        </div>
    </div> 
	<div class="container">
	<div class="row"><!-- products grid -->
		<div class="col-lg-6">
		<img style="width:100%;height:300px" id="product img" src="<c:url value="{{resources/images/productdata.img}}" />" class="img-responsive" />
		</div>	 
		<div class="col-lg-6">
			<p>	<span class="h3 text-uppercase" >{{productdata.name}}</span> </p>
			<p><span class="h3" >Price : Rs. {{productdata.price}}</span></p>
			<p>
			
			<form:form action="cart" commandName="product">
			<span class="h3"> Quantity : <form:input type="number" style="width:15%" path="qty" /> </span>
			<br/>
			<input type="submit" value="Add To Cart" />
			</form:form>
			</p>
			
			
		</div>	 
	</div>			
	</div>
			
		 
	</div>
</div>
</div>
</body>
</html>
