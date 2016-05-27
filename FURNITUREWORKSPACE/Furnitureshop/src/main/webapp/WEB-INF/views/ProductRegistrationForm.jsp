<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="Utf-8">
<meta name="viewport"content="width=device-width,initial-scale=1">
<link rel="stylesheet"herf="https://maxdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<title>ProductRegistrationForm</title>
</head>
<body> class="menu">
<nav role="navigation" class="navbar navbar-default">
 <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">Furnitureshop</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index">Home</a></li>
                <li><a href="aboutus">about us</a></li>
                <li><a href="contactus">contact us</a></li>
                <li><a href="productlist">All Products</a></li>
    <li><a herf="ProductRegistrationForm">Add Products</a></li>
                
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login">Login</a></li>
                <li><a href="signup">Sign up</a></li>
                
            </ul>
        </div>
    </nav>
</div>


<div class="container text-center">
        <form:form action="ProductRegistrationForm" method="get" commandName="ProductRegistrationForm">
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>Product Insert Page</h2></td>
                </tr>
                <tr>
                  <!--   <td>ID:</td>
                    <td><form:input path="id" /></td>
                </tr>
                 -->
                <tr>
                    <td>Group Name:</td>
                    <td><form:input path="GroupName" /></td>
                </tr>
                 <tr>
                    <td>Product Code:</td>
                    <td><form:input path="Qty" /></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><form:input path="Name" /></td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td><form:input path="price" /></td>
                </tr>
                
               
                
              <tr>
                    <td>Quantity:</td>
                    <td><form:input path="Pid" /></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Click to Insert" /></td>
                </tr>
            </table>
        </form:form>
    </div>
    
</body>
</html>

