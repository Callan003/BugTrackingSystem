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
	<tr style="height:50px;">
		<td></td>
		<td>
			<form:form action="./addProject.htm" commandName="projectForm" method="POST">
			<input path="name" name="name" type="text" placeholder="Add new project" class="addNewProjectInput redBorderOnFocus redBorderOnHover">
		</td>
		<td>
			<input onclick="return confirm('Do you want to CREATE a new ${name} project?')" style="padding:5px 10px;"
			class="submitProject redBorderOnHover" type=submit value="&#xf067;"/> 
			</form:form>
		</td>
		</tr>

	<c:forEach items="${model.project}" var="p">
		<tr class="taskRow" style="height:70px;">

			<td colspan="2">
				<a href="dashboard.htm/${p.id}" class="editAndDeleteProject"><h3 value="${p.id}">${p.name}</h3></a>
				<span></span>
			</td>
			
			<td>
				<a href="displayEditProject/${p.id}" class="editAndDeleteProject" style="font-size:1.5em;">&#xf044; &nbsp;</a>

				<a href="deleteProject/${p.id}" style="font-size:1.5em;" class="editAndDeleteProject" 
				onclick="return confirm('Do you want to DELETE the ${p.name} project?');"><span class="deleteSymbol">&#xf1f8;</span></a>
			</td>

		</tr>
	</c:forEach>
		<tr><td colspan="3"><hr></td></tr>
		
		<tr><td></td></tr>
</table>
</div>
<div style="height:20px;">

</div>
</div>

<footer>
<p><jsp:include page="footer.jsp"/></p>
</footer>

</body>
</html>