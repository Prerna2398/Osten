
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
<title>Payment Page</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/global.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/navigation.css" />"
	rel="stylesheet">f
<script src="<c:url value="/resources/js/npm.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>


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
			<li class="nav-item active"><a class="nav-link" href="#">Home</a>
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

	<form action="Payment">
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-6 col xs-12">

					<div class="jumbotron">
						<form>
							<button type="button" class="btn btn-primary btn-sm">PAYABLE
								AMOUNT: Rs.4500</button>
							<button type="button" class="btn btn-secondary btn-sm">TRANSACTION
								ID: OTN346859</button>
							<br>
							<h1 class="text-center">Choose a Payment Option</h1>
							<br>

							<div class="form-group">

								<input class="btn btn-primary" type="button" value="CREDIT CARD">
								<input class="btn btn-primary" type="submit" value="DEBIT CARD">
								<input class="btn btn-primary" type="reset" value="NET BANKING">
								<br>

								<div class="jumbotron jumbotron-fluid">
									<div class="container">
										<div class="form-group">
											<label class="control-Label" for="Name On Card">Name
												on Card</label> <input type="text" name="name" class="form-control"
												placeholder="Enter The Name" required>


										</div>


										<div class="form-group">
											<label class="control-Label" for="number">Card Number</label>
											<input type="text" name="number" class="form-control"
												placeholder="Enter The Card Number" required>

										</div>

										<div class="form-group">

											<label class="control-Label" for="cvv">CVV Number</label> <input
												type="text" name="cvv" class="form-control text"
												placeholder="Enter The CVV Number" required>


										</div>


										<div class="form-group">
											<label class="control-Label" for="expiry date">Expiry
												Date</label> <select name="month">
												<option value="month">Month</option>
												<option value="January">January</option>
												<option value="February">February</option>
												<option value="March">March</option>
												<option value="April">April</option>
												<option value="May">May</option>
												<option value="June">June</option>
												<option value="July">July</option>
												<option value="August">August</option>
												<option value="September">September</option>
												<option value="October">October</option>
												<option value="November">November</option>
												<option value="December">December</option>


											</select> <select name="Year">
												<option value="Year">Year</option>
												<option value="2001">2019</option>
												<option value="2000">2020</option>
												<option value="1999">2021</option>
												<option value="1998">2022</option>
												<option value="1997">2023</option>
												<option value="1996">2024</option>
												<option value="1995">2025</option>
												<option value="1994">2026</option>
												<option value="1993">2027</option>
												<option value="1992">2028</option>

											</select>
										</div>

										<button type="submit" class="btn btn-secondary"
											data-container="body" data-toggle="popover"
											data-placement="right"
											data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
											Pay now</button>

									</div>
									<div class="col-lg-3 col-md-3 col-xs-12"></div>
								</div>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>


	</form>
</body>
</html>