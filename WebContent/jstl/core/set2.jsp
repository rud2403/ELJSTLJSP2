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
	<h1>WebContent/jstl/set2.jsp</h1>
<%-- 	<% --%>
<!-- 		// set1.jsp 페이지에서 전달한 정보 저장 출력 -->
<!-- 		// model, name, price -->
<!-- 		String model = (String)request.getAttribute("model"); -->
<!-- 		String name = (String)request.getAttribute("name");  -->
<!-- 		int price = Integer.parseInt((String)request.getAttribute("price")); -->
		
<%-- 	%> --%>
<%-- 	<%=model %> --%>
<%-- 	<%=name %> --%>
<%-- 	<%=price %> --%>
	
	<hr>
	<!-- p513 참고 -->
	<h2> el표현식으로 속성(attribute)값을 바로 꺼내서 사용 가능 </h2>
	<h2> 기본적으로 해당타입으로 변환 </h2>
	${model }
	${name }
	${price }
	${price +10000 } <!-- 형변환 -->
	<hr>
	<h3> 영역 객체의 접근은 생략 하능하다</h3>
	${requestScope.model }
	${model }
	${pageScope.model }
	
	<hr>
	<!-- jstl 코드 사용해서 특정 영역의 속성을 삭제 -->
	<!-- 속성명은 동일한 이름 사용X -->
	<c:remove var="model"/>
	${model }

	<h2>java 페이지에서 전달된 정보 확인</h2>
	${tel }

	<h2> 전달되는 정보 확인</h2>
	${requestScope.userInfo }
	${requestScope.userInfo.username }
	${requestScope.userInfo.usergender }
	${requestScope.userInfo.useremail }
	
	<br>
	<c:set var="m" value="${requestScope.userInfo }"/>
	${m.username }
	
	<br>
	<c:set var="mNAme" value="${requestScope.userInfo.username }"/>
	${mname }<br>
	<hr>
	
	<h2>java 코드에서 전달 된 리스트 정보를 출력</h2>
	<!-- memberList의 0번방에 있는 username 변수를 가져온다. -->
	${requestScope.memberList[0].username }<br>
	<c:set var="mName" value="${requestScope.memberList[0] }" />
	<c:set var="mName1" value="${requestScope.memberList[0].username }" />
</body>
</html>