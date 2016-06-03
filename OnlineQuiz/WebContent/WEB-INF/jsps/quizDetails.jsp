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

	<c:if test='${not empty sessionScope.user}'>

		<a href='${pageContext.request.contextPath}/userPanel'>
			<div class="button nameuser">Logged as, ${sessionScope.user}</div>
		</a>

		<a href='${pageContext.request.contextPath}/logout'>
			<div class="button logout">Logout</div>
		</a>

	</c:if>

	<br>
	<br>
	<br>
	<div class="login-form">
		<h2 style="position: relative; left: 20%; top: 20px">Instruction
			for ${sessionScope.exam} Quiz :</h2>

		<div style="position: relative; left: 20%; top: 40px">
			<ul style="list-style-type: disc">
				<li>Quiz contains 10 Multiple Choice Questions,</li>
				<li>Total time for the Quiz is 10 Minutes,</li>
				<li>Passing grade is 5 out of 10,</li>
				<li>You can end your test at any time,</li>
				<li>Read the questions carefully before answering,</li>
				<li>You can change your answers before submitting,</li>
				<li>Good luck for the test!</li>
			</ul>
			<br> <br> <br>
		</div>

		<br> <br> <a href='${pageContext.request.contextPath}/exam'><div
				class="button quizbutton"
				style="margin-left: 25%; margin-bottom: 5%; width: 200px;">
				Start Exam</div></a>
	</div>

</body>
</html>