<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Hackable Webapp</title>
</head>
<body>

<h3>Login Form</h3>

<form:form action="/login"  commandName="loginForm">
	<table>
		<tr>
			<td>User Name: <span style="color: Red"><form:errors path="userName" /></span></td>
		</tr>
		<tr>
			<td><form:input path="userName" /></td>
		</tr>
		<tr>
			<td>Password: <span style="color: Red"><form:errors path="password" /></span></td>
		</tr>
		<tr>
			<td><form:password path="password" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit" /></td>
		</tr>
	</table>
</form:form>

</body>
</html>