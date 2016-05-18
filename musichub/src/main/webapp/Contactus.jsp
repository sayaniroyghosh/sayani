<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online Music Hub</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head><body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
<div align="Right">
<a href="#">Login</a>
<a href="#">SignUp</a>
</div>
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Music Hub Store</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">About Us</a></li>
      <li><a href="Contactus.jsp">Contact Us</a></li>
      
    </ul>
  </div>
</nav>
    <span class="pull-right"><a href="#"><img src="http://placehold.it/32x32"></a></span>

<div class="container">
  <h2>Contact Us</h2>
  <form role="form">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Message:</label>
        <textarea class="form-control" rows="5" id="comment"></textarea>

    </div>
    <button type="submit" class="btn btn-default">Submit</button>
	    <button type="submit" class="btn btn-default">Reset</button>
  
</form>
</div>

</body>
</html>
