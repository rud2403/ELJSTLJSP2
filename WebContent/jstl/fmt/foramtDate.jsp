<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>          
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="date" value="<%=new Date() %>"/>
	${date }<br>
	<hr>
	날짜정보의 기본형식 : 
	<fmt:formatDate value="${date }" />
	<hr>
	<!-- 시간정보 출력 -->
	<fmt:formatDate value="${date }" type="time"/>
	<hr>
	<!-- 날짜 + 시간정보 출력 -->
	<fmt:formatDate value="${date }" type="both"/>
	<hr>
	<hr>
	<fmt:formatDate value="${date }" dateStyle="full"/><br>
	<fmt:formatDate value="${date }" dateStyle="long"/><br>
	<fmt:formatDate value="${date }" dateStyle="medium"/><br>
	<fmt:formatDate value="${date }" dateStyle="short"/><br>
	
	<hr>
	<fmt:formatDate value="${date }" type="time" timeStyle="full"/>
	<fmt:formatDate value="${date }" type="time" timeStyle="long"/>
	<fmt:formatDate value="${date }" type="time" timeStyle="medium"/>
	<fmt:formatDate value="${date }" type="time" timeStyle="short"/>
	
	<hr><hr>
	
	
</body>
</html>