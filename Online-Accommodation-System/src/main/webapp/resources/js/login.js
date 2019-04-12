function isUserLoggedIn() {
	if (localStorage.getItem("email") !== null) {
		alert("User is Logged");
		alert(localStorage.getItem("email"));
		alert(localStorage.getItem("email") !== null);
		document.myform.action = "book";
	} else {
		alert("User not logged in");
		document.myform.action = "loginForm";
	}
	return true;
	alert("In userLogged");
}

function LoginUser(email, password) {
	localStorage.setItem('email', email);
	localStorage.setItem('password', password);
	document.displayform.action = "index";
	return true;

}

function verifyUser() {
	var emailV = document.getElementById("email").value;
	var passwordV = document.getElementById("password").value;
	if (emailV == null || passwordV == null) {
		alert("Please fill the form")
	} else {
		if (document.pressed == 'login') {
			document.myform.action = "login";
		} else if (document.pressed == 'signUp') {
			document.myform.action = "signUpForm";
		}
	}

	return true;
}

function LogoutUser() {
	localStorage.removeItem('email');
	localStorage.removeItem('password');
	alert(localStorage.getItem("email"));
}