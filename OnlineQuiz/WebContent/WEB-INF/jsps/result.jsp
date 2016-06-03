<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css">
<style type="text/css">
body {
	background:
		url("${pageContext.request.contextPath}/images/background.jpg");
}
</style>
<title>Test Result - Code Quiz - Test Your Programming
	Knowledge!</title>
</head>
<body>
	<div class='logo'>
		<a href='${pageContext.request.contextPath}'><img height=90%
			width=90% src="${pageContext.request.contextPath}/images/logo.png" /></a>
	</div>
	<div id='navbar'>
		<ul>
			<li><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
			<li><a href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
			<li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
			<li><a href='${pageContext.request.contextPath}/userPanel'><span>My
						Results</span></a></li>
			<li><a href='mailto:berksoysal@gmail.com'><span>Feedback</span></a></li>
			<li><a href='https://ca.linkedin.com/in/berksoysal'
				target="_blank"><span>Contact us</span></a></li>
		</ul>
	</div>

	<a href='${pageContext.request.contextPath}/userPanel'>
		<div class="button nameuser">Logged as, ${sessionScope.user}</div>
	</a>

	<a href='${pageContext.request.contextPath}/logout'>
		<div class="button logout">Logout</div>
	</a>

	<div class="login-form" style="position: absolute; left: 32%; top: 40%">
		<h3 align="center">Quiz Result</h3>
		<table border=1>
			<tr>
				<td class="headstyle">Quiz :</td>
				<td><span id="lblSubject">${sessionScope.exam}</span></td>
			</tr>
			<tr>
				<td class="headstyle">Starting Time :</td>
				<td><span id="lblStime">${sessionScope.started}</span></td>
			</tr>


			<tr>
				<td class="headstyle">Number of Questions :</td>
				<td><span id="lblNquestions">10</span></td>
			</tr>

			<tr>
				<td class="headstyle">Number of correct answers :</td>
				<td><span id="lblNcans">${requestScope.result}</span></td>
			</tr>

		</table>
		<br> <br>
		<c:if test="${requestScope.result >= 5}">
			<h3 align="center" style="color: green">Congratulations! You
				Passed the Test</h3>
		</c:if>
		<c:if test="${requestScope.result < 5}">
			<h3 align="center" style="color: red">Unfortunately, You
				Failed..</h3>
		</c:if>
		<br> <br>
		<h2 align="center">
			<a href='${pageContext.request.contextPath}'>Take Another Exam</a>
		</h2>
	</div>

</body>
</html>