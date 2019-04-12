<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<script src="<c:url value="/resources/js/login.js" />"></script>
</head>
<body>

	<form action="signUpForm">
		<input type="submit" value="SignUp">
	</form>
	<form action="loginForm">
		<input type="submit" value="Login">
	</form>


	<form action="hotelSearch">
		<input type="submit" value="Search">
	</form>

	<form action="logout">
		<button type="submit" onclick="LogoutUser()">Logout</button>
	</form>


</body>
</html>