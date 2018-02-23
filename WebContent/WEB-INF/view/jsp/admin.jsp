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
<title>Role Page</title>
</head>
<body>
	<h3 align="center">User details</h3>
	<table class="offerDisplayTable" align="center">
		<thead>
			<tr>
				<th class="offerDisplayTh">NAME</th>
				<th class="offerDisplayTh">EMAIL</th>
				<th class="offerDisplayTh">AUTHORITY</th>
				<th class="offerDisplayTh">ENABLED</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${ users }">
				<tr>
					<td class="offerDisplayTd">${user.username}</td>
					<td class="offerDisplayTd">${user.email}</td>
					<td class="offerDisplayTd">${user.authority}</td>
					<td class="offerDisplayTd">${user.enabled}</td>
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