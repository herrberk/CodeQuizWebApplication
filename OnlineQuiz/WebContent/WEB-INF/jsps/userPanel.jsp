<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>User Panel - Code Quiz - Test Your Programming Knowledge!</title>
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
</head>
<body>
	<div class='logo'>
		<a href='${pageContext.request.contextPath}'><img height=90%
			width=90% src="${pageContext.request.contextPath}/images/logo.png" /></a>
	</div>
	<div id='navbar'>
		<ul>
			<li><a href='${pageContext.request.contextPath}'><span>Home</span></a></li>
			<li><a
				href='${pageContext.request.contextPath}/login'><span>Login</span></a></li>
			<li><a href='${pageContext.request.contextPath}/register'><span>Register</span></a></li>
			<li class='active'><a href='${pageContext.request.contextPath}/userPanel'><span>My
						Results</span></a></li>
			<li><a href='mailto:berksoysal@gmail.com'><span>Feedback</span></a></li>
			<li><a href='https://ca.linkedin.com/in/berksoysal'
				target="_blank"><span>Contact us</span></a></li>
		</ul>
	</div>

	<!--  If user is not logged in -->
	<c:if test='${empty sessionScope.user}'>
		<div id="wrapper">
			<form name="login-form" class="login-form">
				<div class="header" style="height: 60px;">
					<img style="float: left;" height="30" width="30"
						src="${pageContext.request.contextPath}/images/warn.png" />
					<h1 style="float: right;">Please Register or Login..</h1>
				</div>
			</form>
		</div>
	</c:if>

	<!--  If user is logged in hide the register panel-->
	<c:if test='${not empty sessionScope.user}'>

		<a href='${pageContext.request.contextPath}/userPanel'>
			<div class="button nameuser">Logged as, ${sessionScope.user}</div>
		</a>

		<a href='${pageContext.request.contextPath}/logout'>
			<div class="button logout">Logout</div>
		</a>

		<div class="login-form" style="margin-top: 5%;">
			<h2 align="center"
				style="color: white; background-color: blue; border-radius: 5px;">Test
				Results : ${sessionScope.user}</h2>
			<div class="results">

				<td>
				<tr>
					<c:if test="${java < 50}">
						<div style="color: red;">
					</c:if>
					<c:if test="${java >= 50}">
						<div style="color: green;">
					</c:if>
					<c:out value="Java: %${java}" />
				</tr>
				</td>
			</div>

			<td>
			<tr>
				<c:if test="${javascript < 50}">
					<div style="color: red;">
				</c:if>
				<c:if test="${javascript >= 50}">
					<div style="color: green;">
				</c:if>
				<c:out value="JavaScript: %${javascript}" />
			</tr>
			</td>
		</div>

		<td>
		<tr>
			<c:if test="${sequel < 50}">
				<div style="color: red;">
			</c:if>
			<c:if test="${sequel >= 50}">
				<div style="color: green;">
			</c:if>
			<c:out value="SQL: %${sequel}" />
		</tr>
		</td>
		</div>

		<td>
		<tr>
			<c:if test="${python < 50}">
				<div style="color: red;">
			</c:if>
			<c:if test="${python >= 50}">
				<div style="color: green;">
			</c:if>
			<c:out value="Python: %${python}" />
		</tr>
		</td>
		</div>

		<td>
		<tr>
			<c:if test="${css < 50}">
				<div style="color: red;">
			</c:if>
			<c:if test="${css >= 50}">
				<div style="color: green;">
			</c:if>
			<c:out value="CSS: %${css}" />
		</tr>
		</td>
		</div>

		<td>
		<tr>
			<c:if test="${php < 50}">
				<div style="color: red;">
			</c:if>
			<c:if test="${php >= 50}">
				<div style="color: green;">
			</c:if>
			<c:out value="PHP: %${php}" />
		</tr>
		</td>
		</div>

		<td>
		<tr>
			<c:if test="${c < 50}">
				<div style="color: red;">
			</c:if>
			<c:if test="${c >= 50}">
				<div style="color: green;">
			</c:if>
			<c:out value="C: %${c}" />
		</tr>
		</td>
		</div>


		<td>
		<tr>
			<c:if test="${ruby < 50}">
				<div style="color: red;">
			</c:if>
			<c:if test="${ruby >= 50}">
				<div style="color: green;">
			</c:if>
			<c:out value="Ruby: %${ruby}" />
		</tr>
		</td>
		</div>

		</div>
	</c:if>

</body>
</html>
