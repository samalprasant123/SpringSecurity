<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
</head>
<body>
	
	<h4>${errorMsg}</h4>
	<br>
	<br>
	<div style="height: 25px; background-color: powderblue;">
		<p align="center" style="color: lime; padding-top: 4px;">
			<a href="${pageContext.request.contextPath}/">Home</a>
		</p>
	</div>
</body>
</html>