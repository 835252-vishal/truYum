<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="shortcut icon" href="images/truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
	<header>
	<h2 class="head">truYum</h2>
	<img class="truyum" src="images\truyum-logo-light.png" alt="truyum"
		width=50 height=50 /> </header>
	<nav> <a class="nav-menu" href="ShowMenuItemListCustomer">Menu</a>
	<a class="nav-cart" href="ShowCart">Cart</a> </nav>
	<c:set var="cart" value="${cart}"></c:set>
	<table cellspacing="7" cellpadding="5">
		<col width="250">
		<tr>
			<th><h1>Cart</h1></th>
		</tr>
		<tr>
			<td colspan="3"><c:if test="${removeCartItemStatus==true}">
					<h3 align="center" id="p">Item removed from cart successfully</h3>
				</c:if></td>
		</tr>
		<tr>
			<th align="center" class="name"><label>Name</label></th>
			<th align="center"><label>Free Delivery</label></th>
			<th align="center" class="price"><label>Price</label></th>
		</tr>
		<c:forEach items="${menuItemList}" var="menuItem">
			<tr>
				<td align="center" class="food">${menuItem.getName()}</td>
				<td align="center"><c:choose>
						<c:when test="${menuItem.isFreeDelivery()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>
				<td align="center" class="price1">${menuItem.getPrice()}</td>

				<td align="center"><a
					href="RemoveCart?menuItemId=${menuItem.getId()}" id="h">Delete</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td></td>
			<td align="left"><b>Total</b></td>
			<td align="center"><b>Rs. ${cart.getTotal()}</b></td>
		</tr>
	</table>
	<footer>
	<p>Copyright&nbsp;&copy;&nbsp;2019</p>
	</footer>
</body>
</html>
