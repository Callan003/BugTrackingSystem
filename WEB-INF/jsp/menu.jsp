<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<div style="height:100px; background-color: #333; border-radius: 15px; text-align:center;">
	<div style="padding-top:20px">
		<span style="font-family:FontAwesome; font-size:40px;">&#xf188; </span><span style="font-size: 40px; font-weight:900; -webkit-text-stroke: 2px black;font-family:sans-serif; ">
		 Bug Tracking System</span>
	</div>
</div>

<div class="navbar" style="font-family: FontAwesome;">
   <a href="${pageContext.request.contextPath}/home.htm"><span>&#xf015; </span>&nbsp; Home</a>
  <div class="dropdown">
    <div style="display:flex;" class="dropbtnWrapper"><a href="${pageContext.request.contextPath}/projects.htm" class="dropbtn"><span>&#xf0e8; </span>&nbsp; Projects
      <i class="fa fa-caret-down"></i>
    </a></div>
    <div class="dropdown-content">
    		<a href="${pageContext.request.contextPath}/projects.htm">&#xf067; Add new Project</a>
    	<c:forEach items="${model.project}" var="p">
      		<a href="${pageContext.request.contextPath}/dashboard.htm/${p.id}"><c:out value="${p.name}"/></a>
		</c:forEach>
    </div>
  </div>
  <a class="active" href="${pageContext.request.contextPath}/dashboard.htm"><span>&#xf00a; </span>&nbsp; Dashboard</a>
  <a href="${pageContext.request.contextPath}/addTask.htm"><span>&#xf067; </span>&nbsp; Add new task</a>
  
   <div class="dropdown">
    <div style="display:flex;" class="dropbtnWrapper"><a href="${pageContext.request.contextPath}/report.htm" class="dropbtn"><span>&#xf200;</span>&nbsp; Report 
      <i class="fa fa-caret-down"></i>
    </a></div>
    <div class="dropdown-content">
     	<c:forEach items="${model.project}" var="p">
      		<a href="${pageContext.request.contextPath}/report.htm/${p.id}"><c:out value="${p.name}"/></a>
		</c:forEach>
	</div>
  </div>
   <a href="${pageContext.request.contextPath}/contact.htm"><span>&#xf075; </span>&nbsp; Contact</a>
</div>
<hr/>