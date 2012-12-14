<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Hackable Webapp</title>
</head>
<body>

<h3>Welcome <core:out value="${loginForm.userName}" /></h3>

<p><a href="/">Back</a><p>

</body>
</html>
