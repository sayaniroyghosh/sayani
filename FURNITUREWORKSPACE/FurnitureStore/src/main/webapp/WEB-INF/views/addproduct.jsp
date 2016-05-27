<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Furniture</title>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
<form:form role="form" action="saveproduct" commandName="product" method="post" enctype="multipart/form-data"> 
<form:hidden path="productId"/>
<div class="row row-height">
<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height">
<div class="form-group ">
<label for="name" class="cols-sm-12 control-label">Product Name</label>
<div class="input-group ">
<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
<form:input path="name" type="text" class="form-control cols-sm-12 cols-lg-3" placeholder="Product Name"/>
</div>
<form:errors cssClass="error" path="name" ></form:errors>
</div>
</div>
</div>
<div class="row row-height">
<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height">
<div class="form-group ">
<label for="name" class="cols-sm-12 control-label">Group Name</label>
<div class="input-group ">
<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
<form:input path="groupName" class="form-control cols-sm-12 cols-lg-3" placeholder="Product Group Name"/>
</div>
<form:errors cssClass="error" path="groupName" ></form:errors>
</div>
</div>
</div>
<div class="row row-height">
<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height">
<div class="form-group ">
<label for="name" class="cols-sm-12 control-label">Description</label>
<div class="input-group ">
<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
<form:input path="description" class="form-control cols-sm-12 cols-lg-3" placeholder="Product Description"/>
</div>
</div>
</div>
</div>
<!-- <div class="row row-height"> -->
<!-- <div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height"> -->
<!-- <div class="form-group "> -->
<!-- <label for="name" class="cols-sm-12 control-label">Image</label> -->
<!-- <div class="input-group "> -->
<!-- <span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span> -->
<!-- <form:input path="img" class="form-control cols-sm-12 cols-lg-3" placeholder="Product Image"/> -->
<!-- </div> -->
<!-- </div> -->
<!-- </div> -->
<!-- </div> -->
<div class="row row-height">
<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height">
<div class="form-group ">
<label for="name" class="cols-sm-12 control-label">Price</label>
<div class="input-group ">
<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
<form:input path="price" class="form-control cols-sm-12 cols-lg-3" placeholder="Product Price"/>
</div>

</div>
<form:errors class="error" path="price" ></form:errors>
</div>
</div>
<div class="row row-height">
<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height">
<div class="form-group ">
<label for="name" class="cols-sm-12 control-label">Quantity</label>
<div class="input-group ">
<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>
<form:input path="qty" class="form-control cols-sm-12 cols-lg-3" placeholder="Product Quantity"/>
</div>
</div>
</div>
</div>

<div class="row row-height">
<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height">
<div class="form-group ">
<label for="name" class="cols-sm-12 control-label">Select Image</label>
<div class="input-group ">
<span class="input-group-addon cols-sm-12"><i class="fa fa-user fa" aria-hidden="true"></i></span>

   <form:input type="file"  path="img"/>
</div>
</div>
</div>
</div>
<div class="row row-height">
<div class="col-xs-10 col-sm-6 col-md-6 col-lg-6 col-height">
<div class="form-group ">

<div class="input-group ">

<input type="submit" class="btn btn-primary btn-lg btn-block login-button"></input>
</div>
</div>
</div>
</div>
</form:form>

</div>


</body>
</html>