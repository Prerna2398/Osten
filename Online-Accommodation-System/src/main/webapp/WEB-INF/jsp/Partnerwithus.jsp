<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Partnership With Us</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"> </script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.js">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1,3,0/css/datepicker3.min.js">
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

<script>$('.alert').alert()</script>
<link href="<c:url value="/resources/css/partner.css" />"
	rel="stylesheet">
</head>
<body>

	 <form:form action="redirct" method="post">
<section id="Partnership">
<div class="container">
<h1 class="text-center">Partnership With us</h1>

</div>

<form action="AccountController">
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-6 col xs-12">

					<div class="jumbotron" >
					
				
						<input type="radio" name="options" id="option1" autocomplete="off" checked> Hotels
  						<input type="radio" name="options" id="option2" autocomplete="off"> Hostels 
						<input type="radio" name="options" id="option3" autocomplete="off"> PGs
				<div class="form-group">

							<label class="control-Label" for="name">Name</label> 
							<input type="text" name="username" class="form-control"
								placeholder="Enter your full name" required>
								
						</div>
						<div class="form-group">

							<label class="control-Label" for="city">City</label> 
							<input type="text" name="city" class="form-control"
								placeholder="Enter the city" required>
								
						</div>
						<div class="form-group">

							<label class="control-Label" for="phone">Phone no</label> 
							<input type="number" name="phone" class="form-control"
								placeholder="1234567890" required>
								
						</div>
						<div class="form-group">

							<label class="control-Label" for="email">Email</label> 
							<input type="text" name="email" class="form-control"
								placeholder="eg:abcd@gmail.com" required>
								
						</div>
						<section id="icon">
					
					
						<button type="submit" class="btn btn-primary btn-lg">Connect</button>					
						
						
						
						<a herf="#"><i class="fa fa-facebook"></i></a>
						<a herf="#"><i class="fa fa-twitter"></i></a>
						<a herf="#"><i class="fa fa-youtube-play"></i></a>
						<a herf="#"><i class="fa fa-google-plus"></i></a>
						
					</section>
						
					</div>
					

	
			


				</div>
				<div class="col-lg-3 col-md-3 col-xs-12"></div>
			</div>
		</div>






	</form>
    
 
</div>

					

	</section>
			



</form:form>
</body>
</html>