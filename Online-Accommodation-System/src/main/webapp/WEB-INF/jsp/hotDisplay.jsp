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
<title>Booking Form</title>

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=PT+Sans:400"
	rel="stylesheet">

<!-- Bootstrap -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom stlylesheet -->
<link href="<c:url value="/resources/css/navigation.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotels Result</title>
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
<script src="<c:url value="/resources/js/global.css" />"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="<c:url value="/resources/js/book.js" />"></script>
</head>
<body>

	<!--NavigationBar  -->
	<section id="nav-bar"> <nav
		class="navbar navbar-expand-lg navbar-light "> <img
		src="${pageContext.request.contextPath}/resources/img/OSTEN.jpg" /> <a
		class="navbar-brand" href="#"> </a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link" href="index">Home</a>
			</li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Login/Sign up </a>
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
		</ul>
		<form action="hotelSearch">
			<input type="submit" value="Search">
		</form>

	</div>
	</nav> </section>

	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<form:form name="myform" onsubmit="return isUserLoggedIn();"
							method="post" modelAttribute="Booking">
							<form:input type="hidden" path="hhpId"
								value='<%=request.getParameter("hid")%>' class="form-control" />
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<label class="form-label" for="CIND">Check-In</label>
										<div class="form-control ">
											<label class="inputPlaceholderl"><%=request.getParameter("checkin")%></label>
										</div>
										<form:input type="hidden" id="checkin" name="checkin"
											value='<%=request.getParameter("checkin")%>' path="CIND"
											class="form-control" />
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<label class="form-label" for="COTD">Check-Out</label>
										<div class="form-control ">
											<label class="inputPlaceholderl"><%=request.getParameter("checkout")%></label>
										</div>
										<form:input type="hidden" id="checkout" name="checkout"
											value='<%=request.getParameter("checkout")%>' path="COTD"
											class="form-control" />
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Adults (10+)</span>
										<form:select path="no_of_adults" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
										</form:select>
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Children (0-9)</span>
										<form:select path="children" class="form-control">
											<option>0</option>
											<option>1</option>
											<option>2</option>
										</form:select>
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Rooms</span>
										<form:select path="no_of_rooms" class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>5+</option>
										</form:select>
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Room Type</span>
										<form:select path="RoomType" class="form-control">
											<option>Single AC room</option>
											<option>Single Non-AC room</option>
											<option>Double AC room</option>
											<option>Double Non-AC room</option>
										</form:select>
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-btn">
										<button type="submit" class="submit-btn">Book</button>
									</div>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>

