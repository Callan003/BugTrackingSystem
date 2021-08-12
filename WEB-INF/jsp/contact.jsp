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

<div align="center" style="text-align:center; font-family: FontAwesome;" class="mainBodyContainer">
<h1><span>&#xf075; </span> Contact</h1>
	<table align="center" style="border-collapse: collapse">
	<tr>
	<td>
	&nbsp;
	</td>
	</tr>
	<tr>
	<td>
		<div class="mapouter" style="border: 5px solid black;border-radius: 5px;">
			<div class="gmap_canvas"><iframe width="550" height="400" id="gmap_canvas" 
			src="https://maps.google.com/maps?q=oradea%20trade%20center&t=&z=16&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" 
			marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.org">google map embed code generator</a></div>
			<style>.mapouter{position:relative;text-align:right;height:400px;width:550px;}.gmap_canvas 
			{overflow:hidden;background:none!important;height:400px;width:550px;}</style>
		</div>
		</td>
		<td>
		<div style="display:inline-block;width:600px; height:400px; background-color:gray;">

			<form:form action="${pageContext.request.contextPath}/newContact.htm" commandName="contactForm" method="POST">
			<table align=center style="text-align:left;">
				<tr>
				<td></td>
				<td><h2 style="margin-top:0; text-align:center;"> &nbsp; Send a message</h2></td>
				</tr>
				<tr>
                    <td><form:label style="font-weight:bold;" path="fname"> <span style="font-weight: 100;">&#xf007; </span> First Name: &nbsp;</form:label></td>
                    <td><form:input style="border: 2px solid black; width:100%" class="formTaskInput" path="fname"/></td>
				</tr>
				<tr>
                    <td><form:label style="font-weight:bold;" path="lname"><span style="font-weight: 100;">&#xf007; </span> Last Name: </form:label></td>
                    <td><form:input style="border: 2px solid black; width:100%" class="formTaskInput" path="lname"/></td>
				</tr>
				<tr>
                    <td><form:label style="font-weight:bold;" path="tel"><span style="font-weight: 100;">&#xf095; </span>  Phone: </form:label></td>
                    <td><form:input style="border: 2px solid black; width:100%" class="formTaskInput" path="tel"/></td>
				</tr>
				<tr>
                    <td><form:label style="font-weight:bold;" path="email"><span style="font-weight: 100;">&#xf0e0; </span>  Email: </form:label></td>
                    <td><form:input style="border: 2px solid black; width:100%" class="formTaskInput" path="email" type="email"/></td>
				</tr>
				<tr>
                    <td><form:label style="font-weight:bold;" path="description"><span style="font-weight: 100;">&#xf075; </span>  Message: </form:label></td>
                    <td><form:textarea style="border: 2px solid black; width:100%" rows="7" cols="25" class="formTaskInput" path="description"/></td>
				</tr>
				<tr>
					<td></td>
					<td style="text-align:center;">
					<input class="redBackgroundOnHover" style="padding: 10px 20px;border-radius: 20px;border: 2px solid black;font-family: FontAwesome;font-weight: bold;" 
					type=submit value="Send  &#xf1d8;"/>
					</td>
				</tr>				
						
			</table>
			</form:form>
		</div>
		</td>
	</tr>
	<tr>
		<td style="font-style:italic;">
			<p><span style="font-family: FontAwesome;">&#xf0ac; </span> Strada Nufarului 28E, Oradea, Romania<p/>
				<p><span style="font-family: FontAwesome;">&#xf10b; </span> (0712) 345678 &nbsp;&nbsp;&nbsp;
				<span style="font-family: FontAwesome;">&#xf095; </span> (0259) 123456 <p/>
				<p><span style="font-family: FontAwesome;">&#xf017; </span> Mon-Fri: 08:00 - 20:00<br>
			<span style="font-family: FontAwesome;">&#xf017; </span> Sat-Sun: 10:00 - 15:00</p>
		</td>
		<td>
		
		</td>
	</tr>	
	</table>
</div>
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</body>
</html>