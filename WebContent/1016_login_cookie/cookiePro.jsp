<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.mvc.dao.TestDao" %>
	
	
	
	<%
		// 쿠키확인 id, pw, auto
		
	%>
	<h1>loginPro 페이지</h1>
	
	<jsp:useBean id="dto" class="test.mvc.dao.TestDTO" />
	<jsp:setProperty property="*" name="dto"/>	
	
	<%
		TestDao dao= new TestDao();
		boolean result = dao.loginCheck(dto);
		if(result){
			//session.setAttribute("id", dto.getId());
			//session.setAttribute("pw", dto.getPw());
			String auto = request.getParameter("auto");
			if(auto != null){
				Cookie cooAuto = new Cookie("auto", auto);
				cooAuto.setMaxAge(60*60*24*30);
				response.addCookie(cooAuto);
			}
			
			Cookie ck = new Cookie("id", dto.getId()); 	// 쿠키는 내부객체가 아니라 생성 필요 (키 , 맵) 형식
			ck.setMaxAge(60*5); 							// 60초후 쿠키 삭제
			response.addCookie(ck);						// 쿠키 보내기
			
			response.sendRedirect("main.jsp");
		}else{
	%>
		<script>
			alert("아이디 / 비밀번호를 확인하세요.");
			window.location="loginForm.jsp";
		</script>
		<%}%>

	