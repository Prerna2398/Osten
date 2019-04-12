














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
<title>Booking form</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/global.css" />"
	rel="stylesheet">

<script src="<c:url value="/resources/js/npm.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
	
	<form:form action="book" method="post" modelAttribute="Booking">
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-6 col xs-12">

					<div class="jumbotron">

						<h1 class="text-center">Book</h1>
						<br>
						<p class="text-denger">${error}</p>

						<div class="form-group">

							<label class="control-Label" for="CIND">Check IN</label> 
							<form:input path="CIND" class="form-control" placeholder="Enter check in date " />


						</div>
						<div class="form-group">

							<label class="control-Label" for="COTD">Check OUT</label>
							<form:input path="COTD" class="form-control" placeholder="Enter check out date"/>
						</div>

						<div class="form-group">

							<label class="control-Label" for="no_of_rooms">Security Question</label> 
								<form:select type="number" class="form-control text" path="no_of_rooms">
								<form:option value="What is your Father's Middle Name?">What
									is your Father's Middle Name?</form:option>
								<form:option value="What is your Pet's Name?">What is your
									Pet's Name?</form:option>
								<form:option value="What is your Nickname?">What is your
									Nickname?</form:option>
								<form:option value="What is your House Number">What is your
									House Number?</form:option>
								<form:option value="What is your Favorite Movie Name?">What
									is your Favorite Movie Name?</form:option>
							</form:select>
						</div>


						<div class="form-group">
							<label class="control-Label" for="Answer">Your Answer</label> <br>
							<form:input path="Answer" class="form-control" placeholder="Enter Your Answer" />
						</div>


						<div class="form-group">
							<label class="control-Label" for="Gender">Gender</label> 
							<form:select class="form-control text" path="Gender">
								<form:option value="Male">Male</form:option>
								<form:option value="Female">Female</form:option>
							</form:select>
						</div>
						
						<div class="form-group">
							<label class="control-Label" for="BDate">Date Of Birth</label>
							<form:input type="Date" path="BDate" class="form-control" placeholder="BirthDate" />
						</div>


						<div class="form-group">
							<label class="control-Label" for="email">Email id</label> 
							<form:input path="email" class="form-control" placeholder="Enter Email Id" />

						</div>
						
						<div class="form-group">
							<label class="control-Label" for="password">Password</label> 
							<form:input type="password" path="password" class="form-control" placeholder="Enter Password" />
						</div>
						
						<div class="form-group">
							<label class="control-Label" for="phone_no">Mobile No</label> 
							<form:input path="phone_no" class="form-control" placeholder="Enter Mobile no" />

						</div>
					</div>
					<div class="pull-right">
						<button type="submit" class="bn btn-outline-dark">Register</button>
						<button type="reset" class="bn btn-outline-dark">Cancel</button>
					</div>


				</div>
				<div class="col-lg-3 col-md-3 col-xs-12"></div>
			</div>
		</div>
	</form:form>

</body>
</html>