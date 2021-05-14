<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	// ID, PW 값을 저장 출력
	
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	

%>
<%-- 	아이디 : <%=id %> --%>
<%-- 	비밀번호 : <%=pw %> --%>
	
	아이디 : ${param.id }<br>
	비밀번호 : ${param.pw }<br>
	
	<%
		// 좋아하는 음식 2개 저장 후 출력
		String food1 = request.getParameter("food");
		String food2 = request.getParameter("food");
		
		String[] foods = request.getParameterValues("food");
		// 취미 3개 출력
	
	%>
	음식 1 : <%=food1 %><br>
	음식 2 : <%=food2 %><br> 
	음식 1 : <%=foods[0] %><br>
	음식 2 : <%=foods[1] %><br>
	
	<hr>
	취미1 : ${paramValues.hobby[0] }
	취미2 : ${paramValues.hobby[1] }
	취미3 : ${paramValues.hobby[2] }
	<hr>
	<!-- jsp + el 반복문(x)-->
	
	<hr>
	<!-- jstl + el 반복문 가능 -->
	<c:forEach var="i" begin="0" end="2" step="1">
		${paramValues.hobby[i] }
	</c:forEach>
	
	<!-- items속성에 배열의 형태를 전달, 각각의 요소만큼 반복 해당요소는 var 변수에 저장 -> el표현식으로 반복문에서 저장 가능 -->
	<br>
	<c:forEach var="hb" items="${paramValues.hobby }">
	${hb }<br>
	</c:forEach>
	
</body>
</html>