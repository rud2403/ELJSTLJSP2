package com.itwillbs.myBean;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// @WebServlet("/test") : 어노테이션 - 특정 기능, 표현을 나타내는 방식의 표현법
// => 해당 주소가 실행 되었을 때 해당 클래스를 실행하겠다.
// http://localhost:8088/ELJSTLJSP2/test
@WebServlet("/test.nhn")
public class TestServlet extends HttpServlet{
	// 서블릿 : jsp 코드의 표현을 java코드로 구현한 것
	
	// alt shift s + v
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// GET 방식으로 전달되는 페이지를 처리하는 메소드
		System.out.println("doGet() 호출 ! ");
		
		// java코드로 html화면에 출력
//		PrintWriter out2 = resp.getWriter();
//		out2.write("Hello");
//		out2.close();
		
		
		//	데이터를 생성해서 -> 페이지로 전달 / jstl/set2.jsp
		String tel = "010-1234-7896";
		
		// java 페이지이기 때문에 jsp 내장객체는 없음
		// => HttpServletRequest req 객체 사용 (jsp-request객체)
		
		req.setAttribute("tel", tel);
		
		// 사용자 생성
		MemberDTO kim = new MemberDTO();
		kim.setUsername("김학생");
		kim.setUsergender("남자");
		kim.setUseremail("rud2403@naver.com");
		
		req.setAttribute("userInfo", kim);
		
		// ArrayList 생성
		ArrayList memberList = new ArrayList();
		memberList.add(kim);
		
		req.setAttribute("memberList", memberList);
		
		// forward 방식으로 페이지 이동
		// <jsp:forward> java페이지이기 때문에 사용불가 (JSP 페이지에서만 사용 가능)
		RequestDispatcher dis = req.getRequestDispatcher("/jstl/set2.jsp");
		
		dis.forward(req, resp);
	}
	
	
	
}
