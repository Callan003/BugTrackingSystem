<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Task', 'Hours per Day'],
  ['To Do', ${model.tasks[1]}],
  ['In Progress', ${model.tasks[2]}],
  ['Under Review', ${model.tasks[3]}],
  ['Done', ${model.tasks[4]}]
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':document.getElementById('currentProjectName').value, 'width':750, 'height':450};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
<spring:url value="/resources/css/main.css" var="mainCss" />
	
<link href="${pageContext.request.contextPath}/resources/theme1/css/main.css" rel="stylesheet" >
	
<meta charset="ISO-8859-1">
<title>Report</title>

</head>
<body>
<header align=right>
<jsp:include page="menu.jsp"/>
</header>

<div align="center" style="text-align:center" class="mainBodyContainer">

	<div style="display:inline-block; padding-top:10px;">
	  <div class="dropdown">
	    <div style="display:flex;" class="dropbtnWrapper"><a href="${pageContext.request.contextPath}/report.htm" class="dropbtn" 
	    style="width:250px; border-radius:10px 10px 0 0;">
	    <i class="fa fa-caret-down"></i>
	    &nbsp; Select Project Report Here&nbsp;
	      <i class="fa fa-caret-down"></i>
	    </a></div>
	    <div class="dropdown-content" style="border-radius: 0 0 10px 10px;">
	     	<c:forEach items="${model.project}" var="p">
	      		<a href="${pageContext.request.contextPath}/report.htm/${p.id}" style="width: 250px;"><c:out value="${p.name}"/></a>
			</c:forEach>
				
		</div>
	  </div>
</div>
<div style="padding-top:20px;">
	
	<div id="piechart" style="display:inline-block; border: 5px solid black; border-radius:5px;"></div>

</div>

<div>
	<c:forEach items="${model.project}" var="p">
	<c:if test="${p.id == model.tasks[0]}">
		<option id="currentProjectName" value="${p.name}"></option>
	</c:if>
	</c:forEach>
</div>

</div>
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</body>
</html>