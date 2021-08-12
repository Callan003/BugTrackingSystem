<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/main.css" var="mainCss" />
	
<link href="${pageContext.request.contextPath}/resources/theme1/css/main.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Log in</title>
</head>
<body>
<div align="center" style="text-align:center">
	<%-- <p><c:out value="${model.time}"/><br/></p> --%>
	<table align="center">
	<thead>Plase log in here:</thead>
	<tr></tr>
		<tr><td>
			<form:form action="./loginSubmit1.htm" commandName="loginForm" method="post" >
				E-mail: 
			</td>
			<td>
				<form:input path="email" type="text" />
			</td>
		</tr>
		<tr>
			<td>
				Password:
			</td>
			<td>
		 		<form:input path="password" type="password" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="submit" value="Enter"> 
			</td></tr>
		</form:form>
	</table>
</div>
</body>
</html>