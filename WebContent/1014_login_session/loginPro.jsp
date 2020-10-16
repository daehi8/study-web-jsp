<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.mvc.dao.TestDao" %>

	<h1>loginPro 페이지</h1>
	
	<jsp:useBean id="dto" class="test.mvc.dao.TestDTO" />
	<jsp:setProperty property="*" name="dto"/>	
	
	<%
		TestDao dao= new TestDao();
		boolean result = dao.loginCheck(dto);
		if(result){
			session.setAttribute("id", dto.getId());
			session.setAttribute("pw", dto.getPw());
			response.sendRedirect("main.jsp");
		}else{
		%>
			<script>
				alert("아이디 / 비밀번호를 확인하세요.");
				window.location="loginForm.jsp";
			</script>
		<%}%>

	