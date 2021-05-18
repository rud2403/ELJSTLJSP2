<%@page import="com.itwillbs.myServlet.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/el/BeanTest.jsp</h1>
	
	<h2> 전달된 주인의 이름 </h2>
	<h2> el 표현식 </h2>
	이름 : ${requestScope.kim.name }<br>
	강아지 이름 : ${kim.dog.dogName }
	
	<%
		//jsp 코드로 동일하게 출력
		Person p = (Person)request.getAttribute("kim");
	
	%>
	
	주인 이름 : <%=p.getName() %><br>
	강아지 이름 : <%=p.getDog().getDogName() %>
	
	<h3>
	 하나의 jsp 페이지에서 실행되지만 각각이 실행되는 공간이 다르다.
	 스크립틀릿, jstl, el (서버에서 실행)
	 자바스크립트 (브라우저에서 실행)
	 
	 * 코드 실행순서
	  JSP(java) > JSTL/el > html > JavaScript
	</h3>
</body>
</html>