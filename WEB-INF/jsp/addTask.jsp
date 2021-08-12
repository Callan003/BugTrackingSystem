<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<spring:url value="/resources/css/main.css" var="mainCss" />
	
<link href="${pageContext.request.contextPath}/resources/theme1/css/main.css" rel="stylesheet" >
</head>
<body>
<header align=right>
<jsp:include page="menu.jsp"/>
</header>

<div align="center" style="text-align:center" class="mainBodyContainer">
<form:form action="./addNewTask.htm" commandName="addTaskForm" method="POST">
	<table align="center" id="tabelAdd" style="text-align:center; border-collapse:collapse; border-radius:10px; 
		border-spacing: 2px 0; border:1px solid transparent;background-color:#202020; width:30%;">
	<tr>
		<td></td>
		<th colspan="2"><h2>Add new task</h2></th>
	<tr>
	<tr></tr>
	
		<tr class="taskRow"><td>
		Title: 
		</td><td>
		<form:input class="formTaskInput" path="title" type="text"/>
		</td></tr>
		<tr class="taskRow"><td>
		Description: 
		</td><td>
		<form:textarea class="formTaskInput" rows="7" cols="20" path="description"/>
		</td></tr>
		
		<tr class="taskRow"><td>
		Priority: 
		</td><td>
		<form:select class="formTaskInput" path="priority" name="priority">
			<option style="color:green;" value="low">Low</option>
    		<option style="color:orange;" value="medium">Medium</option>
    		<option style="color:red;" value="high">High</option>
		</form:select>
		</td></tr>
		
		<tr class="taskRow" style="display:none;"><td>
		Assign to:
		</td><td>
			<form:select class="formTaskInput" path="assignedTo" name="assignedTo">
			<option value="user1">U1</option>
    		<option value="user2">U2</option>
    		<option value="user3">U3</option>
		</form:select>
		</td></tr>
		<tr class="taskRow"><td>
		Assign project:
		</td><td>
			<form:select class="formTaskInput" path="projectId" name="projectId">
				<option value="NONE">Select Project</option>
			<c:forEach items="${model.project}" var="p">
				<option value="${p.id}"><c:out value="${p.name}"/></option>
			</c:forEach>
		</form:select>
		</td></tr>
		
		<tr><td>
		<form:input path="date" type="hidden" value="${model.time}"/>
		</td></tr>
		<form:input path="status" name="status" type="number" style="display:none;"  value="1"/>
		</td></tr>
		
		<tr style="height:50px;"><td></td><td>
		<input class="submitProject redBorderOnHover" style="font-size:large; padding:7px 20px;" type=submit value="&#xf00c; Save "/> 
		</td></tr>
		<tr><td></td></tr>
	</table>
</form:form>
</div>
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</body>
</html>