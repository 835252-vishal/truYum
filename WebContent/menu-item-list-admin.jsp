<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu Item List Admin</title>
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
	<header>
	<h2 class="head">truYum</h2>
	<img class="truyum" src="images\truyum-logo-light.png" alt="truyum"
		width=50 height=50 /> </header>
	<nav> <a class="nav-menu" href="ShowMenuItemListAdmin">Menu</a> </nav>
	<table cellspacing="5" cellpadding="5">
		<col width="250">
		<tr>
			<th><h1>Menu Items</h1></th>
		</tr>
		<tr>
			<th class="name"><label>Name</label></th>
			<th class="price"><label>Price</label></th>
			<th align="center"><label>Active</label></th>
			<th align="center"><label>Date of Launch</label></th>
			<th align="center"><label>Category</label></th>
			<th align="center"><label>Free Delivery</label></th>
			<th align="center">Action</th>
		</tr>
		<c:forEach items="${menuItem}" var="menuItem">
			<tr>
				<td align="center" class="food">${menuItem.getName()}</td>
				<td align="center" class="price1">${menuItem.getPrice()}</td>
				<td align="center"><c:choose>
						<c:when test="${menuItem.isActive()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>
				<td align="center"><f:formatDate
						value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"></f:formatDate></td>
				<td align="center">${menuItem.getCategory()}</td>
				<td align="center"><c:choose>
						<c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>
				<td align="center"><a
					href="ShowEditMenuItem?menuItemId=${menuItem.getId()}" id="h">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	<footer>
	<p>Copyright&nbsp;&copy;&nbsp;2019</p>
	</footer>
</body>
</html>
