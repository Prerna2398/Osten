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
<title>About Us</title>
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
<link rel="stylesheet" href="About.css">
</head>
<body>
<form action="aboutus" >
<section id="About us">
<div class="container">
<h1 class="text-center">About Us</h1>

</div>
</section>
<div id="slider">
<div id="headerSlider" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#headerSlider" data-slide-to="0" class="active"></li>
    <li data-target="#headerSlider" data-slide-to="1"></li>
    <li data-target="#headerSlider" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
    <img
        src="${pageContext.request.contextPath}/resources/img/ab1.jpg" />
      
      <div class="carousel-caption d-none d-md-block">
    <h5>Furnished Rooms</h5>
    
  </div>
      </div>
    
    <div class="carousel-item">
    <img
        src="${pageContext.request.contextPath}/resources/img/ab2.jpg" />
     
      <div class="carousel-caption d-none d-md-block">
    <h5>Clean To The Extreme</h5>
    
  </div>
      </div>	
    
   
    <div class="carousel-item">
    <img
        src="${pageContext.request.contextPath}/resources/img/ab3.jpg" />
     
      <div class="carousel-caption d-none d-md-block">
      <h5>All Inclusive Meal Plans</h5>
    
  </div>
    </div>
  
  <a class="carousel-control-prev" href="#headerSlider" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#headerSlider" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>
<section id="Team">
	<div class="container">
<h2>Team Blog</h2>
<p>Our goal is to change the way people stay away from home.The most advanced hospitality tech takes shape here. We introduced pioneering technology to the hospitality industry to deliver better and more efficient operations, management, service and CRM. Our app allows a user to book a room in just 3 taps, or within 5 seconds.</p>
<p>Managing a team of employees is never easy but in the hospitality industry it is an extremely daunting task. At more than 50%, turnover for hospitality staff is one of the highest in the world. This kind of attrition rate can make it very hard to maintain a consistent level of service, meaning  reviews of the hotel and profitability could suffer.

Not only do hotel managers have to hire the right people for the job, they have to devise ways to keep them around and build a positive reputation for the business.</p>

<!--services--->
<section id="services">
	<div class="container">
		<h3>Our Services</h3>
		<div class="row services">
		<div class="col-md-3 text-center">
		<div class="icon">
		<i class="fa fa-clock-o" aria-hidden="true"></i>
		</div>
		<h4>Last Minute Deals</h4>
		</div>
		<div class="col-md-3 text-center">
		<div class="icon">
		<i class="fa fa-users" aria-hidden="true"></i>
		</div>
		<h4>Holiday Packages</h4>
		</div>
		<div class="col-md-3 text-center">
		<div class="icon">
		<i class="fa fa-desktop" aria-hidden="true"></i>
		</div>
		<h4>Activities And Attractions</h4>
		</div>
		<div class="col-md-3 text-center">
		<div class="icon">
		<i class="fa fa-ticket" aria-hidden="true"></i>
		</div>
		<h4>Best Offers</h4>
		</div>
		</div>
	</div>
</section>
<section id="feature">
<h5>Featured By</h5>
<img
        src="${pageContext.request.contextPath}/resources/img/ab4.png" />

</section>

<!-- Social -->
<section id="social">
<div class="container">

<h1>Get Social</h1>
<ul>
	<a herf="#"><i class="fa fa-facebook"></i></a>
	<a herf="#"><i class="fa fa-twitter"></i></a>
	<a herf="#"><i class="fa fa-youtube-play"></i></a>
	<a herf="#"><i class="fa fa-google-plus"></i></a>
</ul>

			</div>
</section>
</body>
</html>