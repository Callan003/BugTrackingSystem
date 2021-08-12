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
<h1><span>&#xf015; </span> Home </h1>
<table align="center" style="border-collapse:collapse;">
	<tr>
	<td></td>
	<td style="border-radius:25px; background-color: #333; padding: 10px; width:45%;">
		<h3> Descriere functionala</h3>
		<p style="font-style: italic; font-size:20px;">
		&nbsp;Sistemul pe care l-am conceput este capabil sa tina evidenta sarcinilor angajatilor dintr-o companie, cat si monitorizarea problemelor (bug-urilor)
		aparute pe parcursul dezvoltarii unei aplicatii.
		Cu ajutorul acestuia, se pot crea <a style="color:red; font-weight:bold;" href="projects.htm">Proiecte</a> care la randul lor pot contine mai multe <a style="color:red; font-weight:bold;" href="addTask.htm">Task</a>-uri (sarcini/bug-uri). Statusurile acestor task-uri se pot
		schimba de la o sectiune la alta cu un simplu click. Proiectele si <a style="color:red; font-weight:bold;" href="addTask.htm">task</a>-urile se pot edita sau sterse.
		Pe pagina <a style="color:red; font-weight:bold;" href="report.htm">Report</a> se poate vizualiza un raport grafic, in functie de statusurile task-urilor pentru fiecare <a style="color:red; font-weight:bold;" href="report.htm">Proiect</a> in parte.
		</p>
	</td>
	<td></td>
	<td style="border-radius:25px; background-color: #333; padding: 10px; width:45%;">
		<h3> Descriere tehnica</h3>
		<p style="font-style: italic; font-size:20px;">Pentru a realiza acest sistem, am lucrat cu mai multe tehnologii. Pentru partea de backend am folosit limbajul de programare JAVA. Tot pe partea de backend, am folosit concepte din OOP (Object Oriented Programming), DAO (Data Access Object), POJO (Plain Old Java Object) si multe altele. 
			Pentru partea de afisare (frontend) am folosit framework-ul Spring MVC. Pentru afisarea paginilor am folosit JSP-uri (Java Server Page) pe care le-am scris în HTML si le-am stilizat in CSS. 
			Pentru baza de date am ales sa folosesc MySQL, iar conexiunea la acesta a fost realizata cu ajutorul JDBC.
			Pentru raportul pie chart (pagina <a style="color:red; font-weight:bold;" href="report.htm">Report</a>) si pentru harta (pagina <a style="color:red; font-weight:bold;" href="contact.htm">Contact</a>) am folosit JavaScript.
		</p>
	</td>
	<td></td>
	</tr>
</table>
</div>
<footer>
<jsp:include page="footer.jsp"/>
</footer>
</body>
</html>