<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MY FURNITURESTORE</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
 
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  
  .footer
  {
  text-align:center;
  }
  #image:hover
  {
  opacity:1.0;
  
  }
  .col-sm-2
  {
  text-align:center;
  }
  .col-sm-2
  {
  text-align:center;
  }
  </style>
</head>
<body>


<div class="menu">
    <nav role="navigation" class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand">Furniture Store</a>
        </div>
        <!-- Collection of nav links and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index">Home</a></li>
                <li><a href="aboutus">about us</a></li>
                <li><a href="contactus">contact us</a></li>
                <li><a href="allproducts">all products</a></li>
              <li><a href="addproduct">add product</a></li>
              
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="loginpage">loginpage</a></li>
                <li><a href="register">register</a></li>
                
            </ul>
        </div>
    </nav>
</div>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/1.jpg"  width="500" height="400">
      </div>

      <div class="item">
        <img src="resources/images/2.jpg"  width="500" height="400">
      </div>
    
     
      <div class="item">
        <img src="resources/images/4.jpg"  width="500" height="400">
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
</br>

<div class="container" >
<div class="row">

<div class="col-sm-3">
<p >This is the world best furniture sites.Our online furniture range includes sofas, beds, dining tables, TV units, 
wardrobes,dressing tables, and lots more.All our wooden furniture designs are available</p>
</div>
<div class="col-sm-2" >
<img id="image" src="resources/images/3.jpg" height="150px" width="150px"/>
<div class="carousel-caption">
<a href="AllProducts">Chair</a>
</div>
</div>
<div class="col-sm-2">
<img id="image" src="resources/images/6.jpg" height="150px" width="150px"/>
<div class="carousel-caption">
<a href="AllProducts">Computer Desk</a>
</div>
</div>
<div class="col-sm-2">
<img id="image" src="resources/images/7.jpg" height="150px" width="150px"/>
<div class="carousel-caption">
<a href="AllProducts">Wardrobe</a>
</div>
</div>
<div class=" col-sm-3">
<p>This is the world best furniture sites.Our online furniture range includes sofas, beds, dining tables, TV units, wardrobes, 
dressing tables, and lots more.All our wooden furniture designs are available.On our portal, you can browse as many furniture 
designs across categories as you like</p>
</div>
</div></div>

<div class="container"> 
<footer class="footer">
<div class="container">
<p class="text-muted">&copy; All right received</p>
</div>
</footer></div>
</body>
</html>

