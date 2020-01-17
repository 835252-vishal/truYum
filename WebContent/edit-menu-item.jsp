<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item</title>
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script src="js/script.js"></script>
</head>
<body>
	<c:set var="menuItem" value="${menuItem}"></c:set>
	<header>
	<h2 class="head">
		<span>truYum</span>
	</h2>
	<img class="truyum" src="images\truyum-logo-light.png" alt="truyum"
		width=50 height=50 /> <nav> <a class="nav-menu"
		href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
	<section>
	<form name="menuItemForm" method="post" action="EditMenuItem"
		onsubmit="return validateMenuItemForm()">

		<input type="hidden" name="id" value="${menuItem.getId()}" />
		<table cellspacing="10">
			<tr>
				<th colspan="4"><h1>Edit Menu Item</h1></th>
			</tr>
			<tr>
				<td colspan="4"><b><label for="name">Name</label></b></td>
			</tr>
			<tr>
				<td colspan="4"><input id="name" value="${menuItem.getName()}"
					name="name" size="75" autocomplete="off" /></td>
				<span id="sname"></span>
			</tr>
			<tr>
				<td><b><label for="price">Price (Rs.)</label></b></td>
				<td><b><label for="active1">Active</label></b></td>
				<td><b><label for="date">Date of Launch</label></b></td>
				<td><b><label>Category</label></b></td>
			</tr>
			<tr>
				<td><input id="price" value="${menuItem.getPrice()}"
					name="price" autocomplete="off" /><span id="pname"></span></td>
				<td><c:choose>
						<c:when test="${menuItem.isActive()==true}">
							<input type="radio" value="Yes" name="active" checked="checked" />Yes
				<input type="radio" value="No" name="active" />No</c:when>
						<c:otherwise>
							<input type="radio" value="Yes" name="active" />Yes
				<input type="radio" value="No" name="active" checked />No</c:otherwise>
					</c:choose></td>
				<td><f:formatDate value="${menuItem.getDateOfLaunch()}"
						pattern="dd/MM/yyyy" var="dateOfLaunch" /> <input id="date"
					type="text" name="dateOfLaunch" size="15" value="${dateOfLaunch}" /><span
					id="dname"></span></td>
				<span id="spandate"></span>
				<td><select id="cat" name="category">
						<option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
						<option value="Starters">Starters</option>
						<option value="Main Course">Main Course</option>
						<option value="Desserts">Desserts</option>
						<option value="Drinks">Drinks</option>
				</select><span id="cname"></span></td>
			</tr>
			<tr>
				<td colspan="4"><c:choose>
						<c:when test="${menuItem.isFreeDelivery()==true}">
							<input class="delivery" type="checkbox" value="Yes"
								name="freeDelivery" checked="checked" />
						</c:when>
						<c:otherwise>
							<input class="delivery" type="checkbox" value="No"
								name="freeDelivery" />
						</c:otherwise>
					</c:choose><b>Free Delivery</b></td>
			</tr>
			<tr>
				<td colspan="2"><input class="submit" type="submit"
					name="submit" value="Save" class="submit" /></td>
			</tr>
		</table>
	</form>
	</section>
	<footer>
	<p>Copyright&nbsp;&copy;&nbsp;2019</p>
	</footer>
</body>
</html>
