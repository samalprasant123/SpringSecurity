<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="${pageContext.request.contextPath}/static/css/create-offer.css"
	rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Account</title>
</head>
<body>
	<h2>Create New Account</h2>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/createaccount"
		commandName="user">
		<table class="offertable" style="width: 420px;">
			<tr>
				<td class="label">Username:</td>
				<td><sf:input class="control" type="text" name="username"
						path="username" placeholder="Enter name" />
					<div class="error">
						<sf:errors path="username"></sf:errors>
					</div></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control" type="text" name="email"
						path="email" placeholder="Enter email" />
					<div class="error">
						<sf:errors path="email"></sf:errors>
					</div></td>
			</tr>
			<tr>
				<td class="label">Password:</td>
				<td><sf:input class="control" type="password" name="password"
						path="password" placeholder="Enter password" />
					<div class="error">
						<sf:errors path="password"></sf:errors>
					</div></td>
			</tr>
			<tr>
				<td class="label">Confirm Password:</td>
				<td><input class="control" type="password" name="cpassword"
					placeholder="Enter password again" /></td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" type="submit" value="Create User"></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>