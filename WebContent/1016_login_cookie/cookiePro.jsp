<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.mvc.dao.TestDao" %>
	
	<h1>loginPro 페이지</h1>
	
	<jsp:useBean id="dto" class="test.mvc.dao.TestDTO" />
	<jsp:setProperty property="*" name="dto"/>	
<%
	String id = null, pw = null, auto = null;
	Cookie [] cookies = request.getCookies();
	if(cookies != null){							// 쿠키 확인
		for(Cookie c : cookies){
			if(c.getName().equals("cid")) {id = c.getValue(); dto.setId(id);}
			if(c.getName().equals("cpw")) {pw = c.getValue(); dto.setPw(pw);}
			if(c.getName().equals("cauto")) {auto = c.getValue(); dto.setAuto(auto);}
		}
	}
	TestDao dao= new TestDao();
	boolean result = dao.loginCheck(dto);
	
	if(result){
		session.setAttribute("id", dto.getId());	// 세션 생성
		if(dto.getAuto() != null && dto.getAuto().equals("1")){		// 자동로그인 확인
			Cookie cid = new Cookie("cid", dto.getId());			// 쿠키는 내부객체가 아니기 때문에 생성 필요
			Cookie cpw = new Cookie("cpw", dto.getPw());
			Cookie cauto = new Cookie("cauto", dto.getAuto());
			cid.setMaxAge(60*60*24);			// 쿠키 종료 시간
			cpw.setMaxAge(60*60*24);
			cauto.setMaxAge(60*60*24);
			response.addCookie(cid);			// 쿠키 보내기
			response.addCookie(cpw);
			response.addCookie(cauto);
		}
			
		response.sendRedirect("main.jsp");
	}else{
%>
	<script>
		alert("아이디 / 비밀번호를 확인하세요.");			
		window.location="loginForm.jsp";
	</script>
	<%}%>

	