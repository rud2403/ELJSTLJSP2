<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 태그 시작 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jstl 태그 끝 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/jstl/set1.jsp</h1>

	<h2> 변수선언 </h2>
	<%
		// set1.jsp 페이지에서만 사용가능한 변수
		int num1 = 10;
		int num2 = 20;
		int sum = num1 + num2;
	%>
	합 : <%=sum %><br>
	
	<hr>
	<!--  JSTL 사용 변수 선언,
		=> EL표현식을 사용해서 변수 호출 / 사용
		jsp 표현식은 사용 불가
	 -->
	<c:set var="num3" value="100" />
	<c:set var="num4" value="200" />
	<c:set var="sum2" value="num3 + num4" />
	<c:set var="sum3" value="${num3+num4 }" />
	
	<c:out value="sum2" />
	<c:out value="${sum2 }" /><br>
	<c:out value="${sum3 }" /><br>
	
<%-- 	<c:out value="<%=sum3 %>"></c:out> --%>

${num3 } + ${num4 } = ${sum3 }<br>

<!--
	내장객체 : page, request, session, application
 	jstl 변수 선언 -> jsp 내장객체 속성(attribute) 선언과 동일하다.
-->

<!-- 아래 두개가 동일 -->
<!-- scope 속성이 없는 경우 page영역에 저장 -->
<c:set var="a" value="100" />
<%
	pageContext.setAttribute("a", 100);
%>

<c:set var="b" value="100" scope="request" />

<!-- request 영역에 속성 3개를 저장  -->
<c:set var="model" value="smasung" scope="request"/>
<c:set var="name" value="s21" scope="request"/>
<c:set var="price" value="100" scope="request"/>

모델명 : ${model }<br>
상품명 : ${name }<br>
가격 : ${price }<br>

<!-- requset 영역의 데이터를 전달하기 위해서 액션태그(forward) 사용
	* 주소는 변경X (set1.jsp), 화면은 변경 O (set2.jsp)
	(+ request, response 객체 정보 전달)
-->

<!-- request 영역의 데이터를 전달하기 위해서 액션태그(forward) 사용 -->
<jsp:forward page="set2.jsp" />
</body>
</html>