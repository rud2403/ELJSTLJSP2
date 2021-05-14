<%@page import="java.lang.reflect.Member"%>
<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jsp 디렉티브를 사용해서 JSTL을 설정(필수) -->   
<!-- 해당 라이브러리를 사용하기 위해서 접두사(prefix)를 c로 지정, => core의 약자 --> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jstl/out.jsp</h1>
	<!-- 액션 태그 : 태그로 JSP동작 처리 -->
	<%-- <jsp:useBean id="" /> --%>
	html : 안녕하세요.
	<br>
	<%
		out.println("jsp : 안녕하세요.");
	%>
	<br>
	JSP 표현식 : <%="안녕하세요." %>
	<br>
	<c:out value="core : 안녕하세요." />1234
	
	<hr>
	* JSP 표현식을 대신해서 사용
	EL 표현식 : ${"안녕하세요" }
	
	html : 2 * 3 = 6<br>
	<%
	double result = 2*3;
	// JSP
	int i = (2 * 3);
	out.println("2 * 3  = " + i);
	%><br>
	JSP 표현식 : <%=result %><br>
	core : <c:out value="2 * 3" /><br>
	el표현식 : ${2*3 } ${result }<br>
	core + el : <c:out value="${2*3 }" />
	core + JSP 표현식 : <c:out value="<%=2*3 %>"/><br>
	
<%-- 	<% --%>
<!--  		Member member = null; -->
<%-- 	%> --%>
	
<%-- 	<%=member.getName() %> --%>

<hr>

<c:out value="member.getName()" /><br>
<!-- core + el 은 null값을 공백으로 출력한다. -->
<!-- core + jsp는 null 에러 -->
<c:out value="${member.getName() }" default="문제발생" /><br>
<!-- core + el 표현식으로 null값을 공백으로 출력
	 => default 속성을 사용하면 원하는 값으로 출력가능 -->
<%-- <c:out value="<%=member.getName() %>" /> --%>
<c:out value="${member.getName() }" default="${'문제발생' }" />
<hr><hr>

<!-- JSTL을 사용해서 일반 태그를 출력 -->
<c:out value="<abc>는 abc태그 입니다." /> 

	
</body>
</html>