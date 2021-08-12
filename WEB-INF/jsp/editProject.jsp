<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/main.css" var="mainCss" />
	
<link href="${pageContext.request.contextPath}/resources/theme1/css/main.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Projects</title>
</head>
<body>
<header align=right>
<jsp:include page="menu.jsp"/>
</header>

<div class="mainBodyContainer" align=center>
<div style=" width:30%;">
<table id="tabelAdd" style="text-align:center; border-collapse:collapse; border-radius:10px;  border-spacing: 2px 0; border:1px solid transparent;background-color:#202020; width:100% ">
	<tr>
		<th colspan="3">
			<h2>Projects</h2>
			<hr>
		</th>
	</tr>

	<c:forEach items="${model.project}" var="p">
		<tr class="taskRow" style="height:70px;">
			<c:choose>
			<c:when test="${model.projectDisplay.id == p.id }">
				<form:form action="${pageContext.request.contextPath}/editProject/${p.id}" commandName="projectDisplay" method="post">
				<td colspan="2">
					<form:input class="editProjectInput" path="name"></form:input>
					<form:input path="id" style="display:none;" value="${p.id}"></form:input>
				</td>
				<td>
				<input class="submitProject" style="font-size:2em;" type=submit value="&#xf00c;"/>
				&nbsp; 
				</td>
				</form:form>
			</c:when>
			<c:otherwise>
			<td colspan="2">
				<a href="dashboard.htm/${p.id}" class="editAndDeleteProject"><h3 value="${p.id}">${p.name}</h3></a>
				<span></span>
			</td>
			<td>
			</td>
			</c:otherwise>
		</c:choose>
		</tr>
	</c:forEach>
		<tr><td colspan="3"><hr></td></tr>
		<tr style="height:50px;">
		<td></td>
		<td>
			<form:form action="./addProject.htm" commandName="projectForm" method="POST">
			<input path="name" disabled name="name" type="text" placeholder="Add new project" class="addNewProjectInput">
		</td>
		<td>
			<input disabled style="padding:5px 10px;font-family:FontAwesome;font-style:normal;font-size:x-large;background:unset;border:0;color:white;" 
			type=submit value="&#xf067;"/> 
			</form:form>
		</td>
		</tr>
		<tr><td></td></tr>
</table>
</div>
</div>

<footer>
<p><jsp:include page="footer.jsp"/></p>
</footer>

</body>
</html>