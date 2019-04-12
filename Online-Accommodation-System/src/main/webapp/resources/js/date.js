function validate() {
	var city = document.forms["searchForm"]["city"];
	var checkin = document.forms["searchForm"]["checkin"];
	var checkout = document.forms["searchForm"]["checkout"];

	if (city.value == "") {
		window.alert("Please enter city.");
		city.focus();
		return false;
	}

	if (checkin.value == "") {
		window.alert("Please enter check in date.");
		checkin.focus();
		return false;
	}

	if (checkout.value == "") {
		window.alert("Please enter check out date");
		checkout.focus();
		return false;
	}
	if (document.getElementById('checkin').value < document
			.getElementById('checkout').value) {
		console.log('ok')
		document.searchForm.action="search-hotel";
		return true;

	} else {
		console.log('Not allowed')
		alert("Enter valid checkout date");
		document.searchForm.action="hotelSearch";
		return false;
	}
}

$(function() {
	var dtToday = new Date();

	var month = dtToday.getMonth() + 1;
	var day = dtToday.getDate();
	var year = dtToday.getFullYear();
	if (month < 10)
		month = '0' + month.toString();
	if (day < 10)
		day = '0' + day.toString();

	var maxDate = year + '-' + month + '-' + day;
	alert(maxDate);
	$('#checkin').attr('min', maxDate);
});