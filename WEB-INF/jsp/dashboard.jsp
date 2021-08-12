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
<title>Dashboard</title>
</head>
<body>
<header align=right>
<jsp:include page="menu.jsp"/>
</header>

<div style=" width:100%; margin: 0 auto; display:table; border-spacing: 2px 0;" align=center>
	<div class="the4elements">
		<div>
			<h2>To Do</h2>
			<hr/>
		</div>
		<table style="text-align:center; border-collapse: collapse;">
		<c:forEach items="${model.tasks}" var="t">
		<c:if test="${t.status == 1}">
					<tr class="taskRow" draggable=true>
						<td><a href="#" class="arrow" style="visibility:hidden;">&#10096; &nbsp;</a></td>
						<td class="tdContent" >
							<p style="font-weight:bold; color:yellow;"><c:out value="${t.title}"/>
							<c:choose>
								<c:when test="${t.priority =='high'}">
								<span style="font-family:FontAwesome;color:red; font-size:smaller; font-weight:lighter;">&#xf062;</span>
								</c:when>
								<c:when test="${t.priority =='low'}">
								<span style="font-family:FontAwesome; color:green; font-size:smaller; font-weight:lighter;">&#xf063;</span>
								</c:when>
								<c:otherwise>
								<span></span>
								</c:otherwise>
							</c:choose></p>
							<p style="word-break: break-word;"><c:out value="${t.description}"/></p>
							
						<c:if test="${model.projectId == null}">
						<a class="editAndDelete" href="editTask/${t.id}"><span id="editSymbol">&#xf044; Edit &nbsp;&nbsp;&nbsp;</span></a>
							<a class="editAndDelete" href="deleteTask/${t.id}" 
							onclick="return confirm('Are you sure you want to delete this task?');"><span id="deleteSymbol">&#xf1f8; Delete</span></a>
							<p style="font-style:italic; font-size:small;color:yellow;"><c:out value="${t.date}"/></p>
						</td>
						<td><a href="${pageContext.request.contextPath}/changeStatusPlus/${t.id}" class="arrow">&nbsp;&#10097;</a></td>
						</c:if>
						<c:if test="${model.projectId != null}">
							<a class="editAndDelete" href="${pageContext.request.contextPath}/editTask/${t.id}/${model.projectId}"><span id="editSymbol">&#xf044; Edit &nbsp;&nbsp;&nbsp;</span></a>
								<a class="editAndDelete" href="${pageContext.request.contextPath}/deleteTask/${t.id}/${model.projectId}" 
								onclick="return confirm('Are you sure you want to delete this task?');"><span id="deleteSymbol">&#xf1f8; Delete</span></a>
								<p style="font-style:italic; font-size:small;color:yellow;"><c:out value="${t.date}"/></p>
							</td>
						<td><a href="${pageContext.request.contextPath}/changeStatusPlus/${t.id}/${model.projectId}" class="arrow">&nbsp;&#10097;</a></td>
						</c:if>
					</tr>
					
					<tr><td style="visibility:hidden; height:3px;"></td></tr>
		</c:if>
		</c:forEach>	
		</table>

	
	</div>
	<div class="the4elements">
		<div>
			<h2>In Progress</h2>
			<hr/>
		</div>
		
		<table style="text-align:center; border-collapse: collapse;">
		<c:forEach items="${model.tasks}" var="t">
				<c:if test="${t.status == 2}">
					<tr class="taskRow" draggable=true>
						<c:if test="${model.projectId == null}">
						<td><a href="${pageContext.request.contextPath}/changeStatusMinus/${t.id}" class="arrow">&#10096;&nbsp;</a></td>
						</c:if>
						<c:if test="${model.projectId != null}">
							<td><a href="${pageContext.request.contextPath}/changeStatusMinus/${t.id}/${model.projectId}" class="arrow">&#10096;&nbsp;</a></td>
						</c:if>
						<td class="tdContent"  >
							<p style="font-weight:bold; color:yellow"><c:out value="${t.title}"/>
							<c:choose>
								<c:when test="${t.priority =='high'}">
								<span style="font-family:FontAwesome;color:red; font-size:smaller; font-weight:lighter;">&#xf062;</span>
								</c:when>
								<c:when test="${t.priority =='low'}">
								<span style="font-family:FontAwesome; color:green; font-size:smaller; font-weight:lighter;">&#xf063;</span>
								</c:when>
								<c:otherwise>
								<span></span>
								</c:otherwise>
							</c:choose>
							</p>
							<p style="word-break: break-word;"><c:out value="${t.description}"/></p>
						<c:if test="${model.projectId == null}">
						<a class="editAndDelete" href="editTask/${t.id}"><span id="editSymbol">&#xf044; Edit &nbsp;&nbsp;&nbsp;</span></a>
							<a class="editAndDelete" href="deleteTask/${t.id}" 
							onclick="return confirm('Are you sure you want to delete this task?');"><span id="deleteSymbol">&#xf1f8; Delete</span></a>
							<p style="font-style:italic; font-size:small;color:yellow;"><c:out value="${t.date}"/></p>
						</td>
						<td><a href="${pageContext.request.contextPath}/changeStatusPlus/${t.id}" class="arrow">&nbsp;&#10097;</a></td>
						</c:if>
						<c:if test="${model.projectId != null}">
							<a class="editAndDelete" href="${pageContext.request.contextPath}/editTask/${t.id}/${model.projectId}"><span id="editSymbol">&#xf044; Edit &nbsp;&nbsp;&nbsp;</span></a>
							<a class="editAndDelete" href="${pageContext.request.contextPath}/deleteTask/${t.id}/${model.projectId}" 
								onclick="return confirm('Are you sure you want to delete this task?');"><span id="deleteSymbol">&#xf1f8; Delete</span></a>
							<p style="font-style:italic; font-size:small;color:yellow;"><c:out value="${t.date}"/></p>
						</td>
						<td><a href="${pageContext.request.contextPath}/changeStatusPlus/${t.id}/${model.projectId}" class="arrow">&nbsp;&#10097;</a></td>
						</c:if>
					</tr>
					
					<tr><td style="visibility:hidden; height:3px;"></td></tr>
				</c:if>
		</c:forEach>
		</table>  

	</div>
	<div class="the4elements">
		<div>
			<h2>Under Review</h2>
			<hr/>
		</div>
				<table style="text-align:center; border-collapse: collapse;">
		<c:forEach items="${model.tasks}" var="t">
				<c:if test="${t.status == 3}">
					<tr class="taskRow" draggable=true>
						<c:if test="${model.projectId == null}">
						<td><a href="${pageContext.request.contextPath}/changeStatusMinus/${t.id}" class="arrow">&#10096;&nbsp;</a></td>
						</c:if>
						<c:if test="${model.projectId != null}">
							<td><a href="${pageContext.request.contextPath}/changeStatusMinus/${t.id}/${model.projectId}" class="arrow">&#10096;&nbsp;</a></td>
						</c:if>
						<td class="tdContent" >
							<p style="font-weight:bold; color:yellow"><c:out value="${t.title}"/>
							<c:choose>
								<c:when test="${t.priority =='high'}">
								<span style="font-family:FontAwesome;color:red; font-size:smaller; font-weight:lighter;">&#xf062;</span>
								</c:when>
								<c:when test="${t.priority =='low'}">
								<span style="font-family:FontAwesome; color:green; font-size:smaller; font-weight:lighter;">&#xf063;</span>
								</c:when>
								<c:otherwise>
								<span></span>
								</c:otherwise>
							</c:choose>
							</p>
							<p style="word-break: break-word;"><c:out value="${t.description}"/></p>
						<c:if test="${model.projectId == null}">
							<a class="editAndDelete" href="editTask/${t.id}"><span id="editSymbol">&#xf044; Edit &nbsp;&nbsp;&nbsp;</span></a>
							<a class="editAndDelete" href="deleteTask/${t.id}" 
							onclick="return confirm('Are you sure you want to delete this task?');"><span id="deleteSymbol">&#xf1f8; Delete</span></a>
							<p style="font-style:italic; font-size:small;color:yellow;"><c:out value="${t.date}"/></p>
						</td>
						<td><a href="${pageContext.request.contextPath}/changeStatusPlus/${t.id}" class="arrow">&nbsp;&#10097;</a></td>
						</c:if>
						
						<c:if test="${model.projectId != null}">
							<a class="editAndDelete" href="${pageContext.request.contextPath}/editTask/${t.id}/${model.projectId}"><span id="editSymbol">&#xf044; Edit &nbsp;&nbsp;&nbsp;</span></a>
								<a class="editAndDelete" href="${pageContext.request.contextPath}/deleteTask/${t.id}/${model.projectId}" 
								onclick="return confirm('Are you sure you want to delete this task?');"><span id="deleteSymbol">&#xf1f8; Delete</span></a>
								<p style="font-style:italic; font-size:small;color:yellow;"><c:out value="${t.date}"/></p>
							</td>
							<td><a href="${pageContext.request.contextPath}/changeStatusPlus/${t.id}/${model.projectId}" class="arrow">&nbsp;&#10097;</a></td>
						</c:if>
					</tr>
					
					<tr><td style="visibility:hidden; height:3px;"></td></tr>
				</c:if>
		</c:forEach>
		</table>  
		
	</div>
	<div class="the4elements">
		<div>
			<h2>Done</h2>
			<hr/>
		</div>
				<table style="text-align:center; border-collapse: collapse;">
		<c:forEach items="${model.tasks}" var="t">
				<c:if test="${t.status == 4}">
					<tr class="taskRow" draggable=true>
						<c:if test="${model.projectId == null}">
						<td><a href="${pageContext.request.contextPath}/changeStatusMinus/${t.id}" class="arrow">&#10096;&nbsp;</a></td>
						</c:if>
						<c:if test="${model.projectId != null}">
							<td><a href="${pageContext.request.contextPath}/changeStatusMinus/${t.id}/${model.projectId}" class="arrow">&#10096;&nbsp;</a></td>
						</c:if>
						<td class="tdContent" >
							<p style="font-weight:bold; color:yellow"><c:out value="${t.title}"/>
							<c:choose>
								<c:when test="${t.priority =='high'}">
								<span style="font-family:FontAwesome;color:red; font-size:smaller; font-weight:lighter;">&#xf062;</span>
								</c:when>
								<c:when test="${t.priority =='low'}">
								<span style="font-family:FontAwesome; color:green; font-size:smaller; font-weight:lighter;">&#xf063;</span>
								</c:when>
								<c:otherwise>
								<span></span>
								</c:otherwise>
							</c:choose>
							</p>
							
							<p style="word-break: break-word;"><c:out value="${t.description}"/></p>
							
						<c:if test="${model.projectId == null }">
							<a class="editAndDelete" href="editTask/${t.id}"><span id="editSymbol">&#xf044; Edit &nbsp;&nbsp;&nbsp;</span></a>
							<a class="editAndDelete" href="deleteTask/${t.id}" 
							onclick="return confirm('Are you sure you want to delete this task?');"><span id="deleteSymbol">&#xf1f8; Delete</span></a>
							<p style="font-style:italic; font-size:small;color:yellow;"><c:out value="${t.date}"/></p>
						</td>
						</c:if>
						<c:if test="${model.projectId != null}">
							<a class="editAndDelete" href="${pageContext.request.contextPath}/editTask/${t.id}/${model.projectId}"><span id="editSymbol">&#xf044; Edit &nbsp;&nbsp;&nbsp;</span></a>
								<a class="editAndDelete" href="${pageContext.request.contextPath}/deleteTask/${t.id}/${model.projectId}" 
								onclick="return confirm('Are you sure you want to delete this task?');"><span id="deleteSymbol">&#xf1f8; Delete</span></a>
								<p style="font-style:italic; font-size:small;color:yellow;"><c:out value="${t.date}"/></p>
							</td>
						</c:if>
						<td><a href="#" class="arrow" style="visibility:hidden;">&nbsp;&#10097;</a></td>
					</tr>
					
					<tr><td style="visibility:hidden; height:3px;"></td></tr>
				</c:if>
		</c:forEach>
		</table>  
	</div>

</div>

<footer>
<jsp:include page="footer.jsp"/>
</footer>

</body>
</html>