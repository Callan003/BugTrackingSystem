<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<div align="center" style="text-align:center">
<form:form action="./registerUser.htm" commandName="regForm" method="post">
	<table align="center">
	<thead>Plase register in here:</thead>
	<tr></tr>
	
		<tr><td>
		First name: 
		</td><td>
		<form:input path="fname" type="text"/>
		</td></tr>
		<tr><td>
		Last name: 
		</td><td>
		<form:input path="lname" type="text"/>
		</td></tr>
		
		<tr><td>
		E-mail: 
		</td><td>
		<form:input path="email" type="email"/>
		</td></tr>
		
		<tr><td>
		Password:
		</td><td>
		 <form:input path="password" type="password"/>
		</td></tr>
		
		<tr><td>
		Confirm <br/> Password:
		</td><td>
		 <input type="password"/>
		</td></tr>
		
		<tr><td></td><td>
		<input type=submit value="Sign up"/> 
		</td></tr>
		</form:form>
	</table>
</div>
</body>
</html>