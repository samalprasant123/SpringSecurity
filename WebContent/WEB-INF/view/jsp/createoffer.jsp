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
<title>Create Offer</title>
</head>

<body>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/offercreated"
		commandName="offer">
		<table class="offertable">
			<tr>
				<td class="label">Name:</td>
				<td><sf:input class="control" type="text" name="name"
						path="name" placeholder="Enter name" /><br /> <sf:errors
						path="name" cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control" type="text" name="email"
						path="email" placeholder="Enter email" /><br /> <sf:errors
						path="email" cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">Your Offer:</td>
				<td><sf:textarea class="control" name="text" path="text"
						rows="4" cols="50" placeholder="Enter your offer here"></sf:textarea><br />
					<sf:errors path="text" cssClass="error"></sf:errors></td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" type="submit" value="Create Offer"></td>
			</tr>
		</table>
	</sf:form>

	<br>
	<br>
	<div class="homeDiv">
		<p class="homeP">
			<a href="${pageContext.request.contextPath}/">Home</a>
		</p>
	</div>

</body>
</html>