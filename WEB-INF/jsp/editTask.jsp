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
<form:form action="${pageContext.request.contextPath}/editTask.htm" commandName="taskForm" method="post">
	<table align="center" id="tabelAdd" style="text-align:center; border-collapse:collapse; border-radius:10px; 
		border-spacing: 2px 0; border:1px solid transparent;background-color:#202020; width:30%;">
	<tr>
		<td></td>
		<th colspan="2">
			<h2>Edit task</h2>
		<th>
	</tr>
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
		<c:choose>
		    <c:when test="${taskForm.priority =='low'}">
		        <option style="color:green;" selected="selected" value="low">Low</option>
    			<option style="color:orange;" value="medium">Medium</option>
  				<option style="color:red;" value="high">High</option>
		    </c:when>    
		        
		    <c:when test="${taskForm.priority =='medium'}">
		        <option style="color:green;" value="low">Low</option>
    			<option style="color:orange;" selected="selected" value="medium">Medium</option>
  				<option style="color:red;"  value="high">High</option>
		    </c:when>
		    	
		    <c:when test="${taskForm.priority =='high'}">
		        <option style="color:green;" value="low">Low</option>
    			<option style="color:orange;" value="medium">Medium</option>
  				<option style="color:red;"  selected="selected" value="high">High</option>
  			</c:when>
  			<c:otherwise>
  				<option style="color:green;" value="low">Low</option>
    			<option style="color:orange;" value="medium">Medium</option>
    			<option style="color:red;"  value="high">High</option>
  			</c:otherwise>
		</c:choose>

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
		Status:
		</td><td>
			<form:select class="formTaskInput" path="status" name="status">
			<c:choose>
				<c:when test="${taskForm.status == 1}">
					<option selected="selected" value="1">To Do</option>
		    		<option value="2">In Progress</option>
		    		<option value="3">Under review</option>
		    		<option value="4">Done</option>
				</c:when>
				<c:when test="${taskForm.status == 2}">
					<option value="1">To Do</option>
		    		<option selected="selected" value="2">In Progress</option>
		    		<option value="3">Under review</option>
		    		<option value="4">Done</option>
				</c:when>
				<c:when test="${taskForm.status == 3}">
					<option value="1">To Do</option>
		    		<option value="2">In Progress</option>
		    		<option selected="selected" value="3">Under review</option>
		    		<option value="4">Done</option>
				</c:when>
				<c:when test="${taskForm.status == 4}">
					<option value="1">To Do</option>
		    		<option value="2">In Progress</option>
		    		<option value="3">Under review</option>
		    		<option selected="selected" value="4">Done</option>
				</c:when>
				<c:otherwise>
					<option value="1">To Do</option>
		    		<option value="2">In Progress</option>
		    		<option value="3">Under review</option>
		    		<option value="4">Done</option>
				</c:otherwise>
			</c:choose>

		</form:select>
		</td></tr>
		
		<tr class="taskRow"><td>
				Project:
		</td><td>
			<form:select class="formTaskInput" path="projectId" name="projectId">
			<c:forEach items="${model.project}" var="p">
				<c:choose>
					<c:when test="${taskForm.projectId == p.id}">
						<option selected="selected" value="${p.id}"><c:out value="${p.name}"/></option>
					</c:when>
					<c:otherwise>
						<option value="${p.id}"><c:out value="${p.name}"/></option>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</form:select>
		</td></tr>
		
		<tr><td>
		<form:input path="id" type="hidden"/>
		</td></tr>

		
		<tr style="height:50px;"><td></td><td>
		<input class="submitProject redBorderOnHover" style="font-size:large; padding:8px 20px;" type=submit value="&#xf00c; Save"/> 
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