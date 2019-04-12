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
<title>Osten Login</title>
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

<script src="<c:url value="/resources/js/login.js" />"></script>
<!-- Custom stlylesheet -->
<link href="<c:url value="/resources/css/global.css" />"
	rel="stylesheet">
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
					<form action="logout">
						<input type="submit" onclick="LogoutUser()" value="Logout">
					</form>

				</div></li>


		</ul>
		<form action="hotelSearch">
			<input type="submit" value="Search">
		</form>
	</nav> </section>

	<div id="display" class="section">
		<div class="display-form">
			<form:form name="myform" onsubmit="return verifyUser();"
				method="post" modelAttribute="User">
				<div class="container-fluid">
					<div class="row">

						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
						<div class="col-lg-6 col-md-6 col-sm-6 col xs-12">

							<div class="jumbotron">

								<h1 class="text-center">Login</h1>
								<br>
								<p class="text-denger">${message}</p>

								<div class="form-group">

									<label class="control-Label" for="email">Email</label>
									<form:input path="email" class="form-control" id="email"
										placeholder="Enter Email" />


								</div>
								<div class="form-group">

									<label class="control-Label" for="password">Password</label>
									<form:input type="password" path="password"
										class="form-control" id="password"
										placeholder="Enter password" />
								</div>

							</div>
							<div class="pull-right">
								<button type="submit" class="bn btn-outline-dark"
									onclick="document.pressed=this.value" value="login">Login</button>
								<label class="control-Label">New User ?</label>
								<button type="submit" class="bn btn-outline-dark"
									onclick="document.pressed=this.value" value="signUp">Sign
									Up</button>
								<button type="reset" class="bn btn-outline-dark">Cancel</button>
							</div>


						</div>
						<div class="col-lg-3 col-md-3 col-xs-12"></div>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>