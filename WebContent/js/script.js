function validateMenuItemForm() {
	var firstName = document.forms["menuItemForm"]["name"].value;
	if (firstName == "") {
		alert("Title is required");
		return false;
	} else if (firstName.length < 2 || firstName > 65) {
		alert("Title should have 2 to 65 charecters");
		return false;
	} else {
		document.getElementById("sname").innerHTML = "";
	}
	var Price = document.forms["menuItemForm"]["price"].value;
	if (Price == "") {
		alert("Price is required");
		return false;
	} else if (isNaN(Price)) {
		alert("Price has to be a number");
		return false;
	} else {
		document.getElementById("pname").innerHTML = "";
	}
	var Date = document.forms["menuItemForm"]["dateOfLaunch"].value;
	if (Date == "") {
		alert("Date of Launch is required");
		return false;
	} else {
		document.getElementById("dname").innerHTML = "";
	}
	var Category = document.forms["menuItemForm"]["category"].value;
	if (Category == "") {
		alert("Select one category");
		return false;
	} else {
		document.getElementById("cname").innerHTML = "";
	}
}