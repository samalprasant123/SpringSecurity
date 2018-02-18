<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link
	href="${pageContext.request.contextPath}/static/css/create-offer.css"
	rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Offers</title>
</head>

<body>
	<table class="offerDisplayTable" align="center">
		<thead>
			<tr>
				<th class="offerDisplayTh">NAME</th>
				<th class="offerDisplayTh">EMAIL</th>
				<th class="offerDisplayTh">TEXT</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="offer" items="${ offers }">
				<tr>
					<td class="offerDisplayTd">${offer.name}</td>
					<td class="offerDisplayTd">${offer.email}</td>
					<td class="offerDisplayTd">${offer.text}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br>
	<br>
	<div class="homeDiv">
		<p class="homeP">
			<a href="${pageContext.request.contextPath}/">Home</a>
		</p>
	</div>

</body>

</html>