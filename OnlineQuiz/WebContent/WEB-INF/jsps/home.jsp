<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}

</style>
  
   <title>Code Quiz - Test Your Programming Knowledge!</title>
</head>
<body>
 <div class='logo'><a href='${pageContext.request.contextPath}'><img height=90% width=90% src="${pageContext.request.contextPath}/images/logo.png"/></a></div>
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

<div style="position:absolute;left:5%; top:30%;">
<table cellpadding="0" cellspacing="50">

<tr>
<td class="pic" ><a href="takeExam?test=java">
<div class="caption">
    <img class="caption__media" width="300" height="300" src="${pageContext.request.contextPath}/images/java.png" />
    <div class="caption__overlay">
        <h1 class="caption__overlay__title">Test your Java!</h1>
        <p class="caption__overlay__content">Take a Java Quiz to test your knowledge..</p>
    </div>
</div>



</a></td>
<td><a href="takeExam?test=javascript"><img height="200" width="200" src="${pageContext.request.contextPath}/images/javascript.png"/></a></td>
<td><a href="takeExam?test=sequel"><img height="200" width="200" src="${pageContext.request.contextPath}/images/sql-logo.png"/></a></td>
<td><a href="takeExam?test=python"><img height="200" width="200" src="${pageContext.request.contextPath}/images/python.jpg"/></a></td>
</tr>

<tr>
<td><a href="takeExam?test=css"><img height="200" width="200" src="${pageContext.request.contextPath}/images/css.jpg"/></a></td>
<td><a href="takeExam?test=php"><img height="200" width="200" src="${pageContext.request.contextPath}/images/php-logo.jpg"/></a></td>
<td><a href="takeExam?test=c"><img height="200" width="200" src="${pageContext.request.contextPath}/images/logo-linux.png"/></a></td>
<td><a href="takeExam?test=ruby"><img height="200" width="200" src="${pageContext.request.contextPath}/images/mongodb_logo.png"/></a></td>
</tr>

</table>
</div>


</body>
</html>
