<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css">
<title>Quiz - Code Quiz - Test Your Programming Knowledge!</title>
<style type="text/css">
body {
	background:
		url("${pageContext.request.contextPath}/images/background.jpg");
}
</style>
</head>
<body>
	<div class='logo'>
		<a href='${pageContext.request.contextPath}'><img height=90%
			width=90% src="${pageContext.request.contextPath}/images/logo.png" /></a>
	</div>
	<div id='navbar'>
		<ul>
			<li class='active'><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
			<li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
			<li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
			<li class='#'><a href='#'><span>Submit a Question</span></a></li>
			<li class=''><a href='#'><span>Feedback</span></a></li>
			<li><a href='#'><span>Contribute</span></a></li>
			<li><a href='#'><span>Contact us</span></a></li>
		</ul>
	</div>

	<c:if test='${not empty sessionScope.user}'>

	
<div class= "button username" style="position:absolute;top:7%;left:75%">
Logged as <a href="#" >${sessionScope.user}</a>
</div>

<div class ="button username" style="position:absolute;top:7%;left:90%">
<a href='${pageContext.request.contextPath}/logout'>Logout</a>
</div>

	</c:if>
	<br>
	<br>
	<br>
	<h2 style="position: relative; left: 30%; top: 20px">Instruction
		for ${sessionScope.exam} Quiz :</h2>

	<div style="position: relative; left: 30%; top: 40px">
		<ul style="list-style-type: disc">
			<li>Quiz contains 10 Multiple Choice Questions</li>
			<li>Total time for the Quiz is 10 Minutes</li>
			<li>You can end your test at any time</li>
			<li>Read the questions carefully before answering</li>
			<li>You can change your answers before submitting</li>
			<li>Good luck for the test!</li>
		</ul>
		<br>
		<br>
		<br>
	</div>
<br><br>

	<div class="button username" style="margin-left: 32%; width: 200px;">
		<a href='${pageContext.request.contextPath}/exam'>Start Exam</a>
	</div>


</body>
</html>