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
<title>Home Page</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js">
	
</script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link
	href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.js">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1,3,0/css/datepicker3.min.js">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
<link href="<c:url value="/resources/css/style1.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/login.js" />"></script>
</head>
<body>
	<!--NavigationBar  -->
	<section id="nav-bar"> <nav
		class="navbar navbar-expand-lg navbar-light "> <img
		src="${pageContext.request.contextPath}/resources/img/OSTEN.jpg" /> <a
		class="navbar-brand" href="index"> </a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	${message}
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home</a>
			</li>
			<%
				String messageLS = "Login/Sign Up";
			%>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">Login/Sign Up</a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#"></a>
					<form action="loginForm">
						<input type="submit" value="Login">
					</form>
					<a class="dropdown-item" href="#"></a>
					<form action="signUpForm">
						<input type="submit" value="SignUp">
					</form>

				</div></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Help </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#"></a>
					<form action="contactus">
						<input type="submit" value="Contact Us">
					</form>

					<a class="dropdown-item" href="#"></a>
					<form action="aboutus">
						<input type="submit" value="About Us">
					</form>
					<form action="logout">
						<input type="submit" onclick="LogoutUser()" value="Logout">
					</form>

				</div></li>


		</ul>
		<form action="hotelSearch">
			<input type="submit" value="Search">
		</form>


	</div>
	</nav> </section>
	<!-- Slider -->
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
						src="${pageContext.request.contextPath}/resources/img/shivee2.jpg" />

					<div class="carousel-caption">
						<h1>What Are You Looking For?</h1>
						<button type="button" class="btn btn-primary">Hotels</button>
						<button type="button" class="btn btn-success">Hostels</button>
						<button type="button" class="btn btn-danger">PGs</button>
					</div>
				</div>

				<div class="carousel-item">
					<img src="${pageContext.request.contextPath}/resources/img/mid.jpg" />


					<div class="carousel-caption">
						<form action="AccountController">
							<div class="container-fluid">
								<div class="row">

									<div class="col-lg-3 col-md-3 col-sm-3 col-xs-8"></div>
									<div class="col-lg-6 col-md-6 col-sm-6 col xs-8"></div>
									<div class="col-lg-3 col-md-3 col-xs-12"></div>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>

		<div class="carousel-item">
			<img src="${pageContext.request.contextPath}/resources/img/third.jpg" />

		</div>

		<a class="carousel-control-prev" href="#headerSlider" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#headerSlider" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>
	</div>
	<!-- About -->
	<section id="team">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h2>Team Blog</h2>
				<div class="team-content">Our goal is to change the way people
					stay away from home.The most advanced hospitality tech takes shape
					here. We introduced pioneering technology to the hospitality
					industry to deliver better and more efficient operations,
					management, service and CRM. Our app allows a user to book a room
					in just 3 taps, or within 5 seconds.</div>
				<button type="button" class="btn btn-primary">Read More>></button>
			</div>
			<div class="col-md-6 skills-bar">
				<p>Customer Reviews</p>
				<div class="progress">
					<div class="progress-bar" style="width: 80%;">80%</div>
				</div>
				<p>Deals Offered</p>
				<div class="progress">
					<div class="progress-bar" style="width: 85%;">85%</div>
				</div>
				<p>Popularity</p>
				<div class="progress">
					<div class="progress-bar" style="width: 75%;">75%</div>
				</div>
				<p>Cities Covered</p>
				<div class="progress">
					<div class="progress-bar" style="width: 55%;">55%</div>
				</div>
			</div>
		</div>
	</section>
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
	<!-- Our Team -->
	<section id="team1">
	<div class="container">
		<h5>Our Team</h5>
		<div class="row">
			<div class="col-md-3 profile-pic text-center">
				<div class="img-box">
					<img src="${pageContext.request.contextPath}/resources/img/t1.jpg" />

					<ul>
						<a herf="#"><li><i class="fa fa-facebook"></i></li></a>
						<a herf="#"><li><i class="fa fa-twitter"></i></li></a>
						<a herf="#"><li><i class="fa fa-linkedin"></i></li></a>
					</ul>
				</div>
				<h6>Shivee Bhatt</h6>
				<h7>Founder</h7>
			</div>
			<div class="col-md-3 profile-pic text-center">
				<div class="img-box">
					<img src="${pageContext.request.contextPath}/resources/img/t1.jpg" />

					<ul>
						<a herf="#"><li><i class="fa fa-facebook"></i></li></a>
						<a herf="#"><li><i class="fa fa-twitter"></i></li></a>
						<a herf="#"><li><i class="fa fa-linkedin"></i></li></a>
					</ul>
				</div>
				<h6>Shivee Bhatt</h6>
				<h7>Founder</h7>
			</div>
			<div class="col-md-3 profile-pic text-center">
				<div class="img-box">
					<img src="${pageContext.request.contextPath}/resources/img/t1.jpg" />

					<ul>
						<a herf="#"><li><i class="fa fa-facebook"></i></li></a>
						<a herf="#"><li><i class="fa fa-twitter"></i></li></a>
						<a herf="#"><li><i class="fa fa-linkedin"></i></li></a>
					</ul>
				</div>
				<h6>Shivee Bhatt</h6>
				<h7>Founder</h7>
			</div>
			<div class="col-md-3 profile-pic text-center">
				<div class="img-box">
					<img src="${pageContext.request.contextPath}/resources/img/t1.jpg" />

					<ul>
						<a herf="#"><li><i class="fa fa-facebook"></i></li></a>
						<a herf="#"><li><i class="fa fa-twitter"></i></li></a>
						<a herf="#"><li><i class="fa fa-linkedin"></i></li></a>
					</ul>
				</div>
				<h6>Shivee Bhatt</h6>
				<h7>Founder</h7>
			</div>
		</div>

	</div>


	</section>

	<!-- promo -->
	<section id="promo">
	<div class="conatiner">
		<p>Join Us</p>
		<a href="#" class="btn btn-primary">Contact Us</a>
	</div>


	</section>
	<!-- ads -->




	<section id="ads2">
	<div class="conatiner">

		<img src="${pageContext.request.contextPath}/resources/img/ads2.jpg" />
	</div>
	</section>

	<section id="ads3">
	<div class="conatiner">

		<img src="${pageContext.request.contextPath}/resources/img/ads3.jpg" />
	</div>
	</section>
	<section id="ads4">
	<div class="conatiner">

		<img src="${pageContext.request.contextPath}/resources/img/ads4.jpg" />
	</div>
	</section>




	<!-- Social -->
	<section id="social">
	<div class="container">

		<p>Get Social</p>
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