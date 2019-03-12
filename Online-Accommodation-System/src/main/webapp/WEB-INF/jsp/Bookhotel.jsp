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
<title>Book with Jsp</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/global.css" />"
	rel="stylesheet">

<script src="<c:url value="/resources/js/npm.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</head>
<body>
	
	<form:form action="register" method="post" modelAttribute="User">
		<div class="container-fluid">
			<div class="row">

				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-6 col xs-12">

					<div class="jumbotron">

						<h1 class="text-center">Book</h1>
						<br>
						<p class="text-denger">${error}</p>

					

						
						<div class="form-group">

							<label class="control-Label" for="number of room">Number of room</label>
							<form:input path="numver of room" class="form-control" placeholder="Number of room"/>
						</div>

						<div class="form-group">

							<label class="control-Label" for="Room Type">Room Type</label> 
								<form:select type="text" class="form-control text" path="Room Type">
								<form:option value="Ac Double">Ac Double
		                     	</form:option>
								<form:option value="Ac Single">Ac single
									</form:option>
							
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
							<label class="control-Label" for="check in date">Check In Date</label>
							<form:input type="Date" path="check in date" class="form-control" placeholder="check in date" />
						</div>


						<div class="form-group">
							<label class="control-Label" for="check out date">Check Out Date</label> 
							<form:input type="Date"  path="check our date"class="form-control" placeholder="check out date" />

						</div>
						
									</div>
					<div class="pull-right">
						<button type="submit" class="bn btn-outline-dark">Next</button>
				
					</div>


				</div>
				<div class="col-lg-3 col-md-3 col-xs-12"></div>
			</div>
		</div>
	</form:form>

</body>
</html>