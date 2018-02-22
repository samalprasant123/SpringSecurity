<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Security Home</title>
</head>

<body>
	<h2 align="center">Welcome to Spring Security App</h2>
	<hr>
	<br>
	<br>
	<br>
	<p>
		<a href="${pageContext.request.contextPath}/offers">Show current
			offers</a>
	</p>
	<p>
		<a href="${pageContext.request.contextPath}/createoffer">Create
			Offer</a>
	</p>

	<p>
		<c:url var="logoutUrl" value="/logout"/>
		<form action="${logoutUrl}" method="post" id="logout123">
    		<!-- <input type="submit" value="Logout"/> -->
    		<a href="#" onclick="document.getElementById('logout123').submit();">Logout</a>
    		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</form>		
	</p>
	
</body>

</html>