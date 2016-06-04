<%@ page language="java" import="com.herrberk.quiz.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Quiz - Code Quiz - Test Your Programming Knowledge!</title>
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    
 <style type="text/css">
body {
	background: url("${pageContext.request.contextPath}/images/background.jpg");
}
</style>

</head><br/>
<body>
<div style="font-weight:bold;position:absolute;left:50px;top:20px">
<%
  int currentQuestion=((Exam)request.getSession().getAttribute("currentExam")).getCurrentQuestion();
 // System.out.println("Question Number "+currentQuestion+ " retrieved ");
 %>
Current Question ${sessionScope.quest.questionNumber+1} / ${NOQ}
</div>


 <div style="background-color:white;position:absolute;width:800px;padding:25px;
  height: 200px;border: 1px solid green ;left:100px;top:60px">
<span style="font-weight:bold;">${sessionScope.quest.question}</span><br/><br/>
<form action="exam" method="post" >
 <c:forEach var="choice" items="${sessionScope.quest.questionOptions}" varStatus="counter">
 <input type="radio" name="answer" value="${counter.count}" > ${choice}  <br/>
 </c:forEach> <br/> 
 
 <%
   if(currentQuestion > 0)
   {
 %>
 <input class="button quizbutton"  type="submit" name="action" value="Previous" />
 <%} %>
 
 <%
   if(currentQuestion < (Exam.numberOfQuestions-1))
   {
 %>
 <input class="button quizbutton" type="submit" name="action" value="Next" />
 <%} %>
 <input class="button finish"  type="submit" name="action" value="Save and Finish Exam" />
	<a href='${pageContext.request.contextPath}'>
			<div class="button cancelandreturn">Cancel and Return to HomePage, ${sessionScope.user}</div>
		</a>
</form>
</div>


</body>
</html>