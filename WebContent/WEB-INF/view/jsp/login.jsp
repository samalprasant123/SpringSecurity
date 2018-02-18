<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="${pageContext.request.contextPath}/static/css/create-offer.css"
	rel="stylesheet" type="text/css" />
<title>Login Page</title>
</head>
<body onload="document.f.username.focus();">
	<h3>Login with Username and Password</h3>
	<c:if test="${param.error == true}">
		<p class="error">Incorrect Username or Password</p>
	</c:if>
	<form name="f" action="${pageContext.request.contextPath}/login" method="POST">
		<table class="offertable">
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username" value="" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="2"><input name="submit" type="submit"
					value="Login" /></td>
			</tr>
			<input name="${_csrf.parameterName}" type="hidden"
				value="${_csrf.token}" />
		</table>
	</form>
</body>
</html>