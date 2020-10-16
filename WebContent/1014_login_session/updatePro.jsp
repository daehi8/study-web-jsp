<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.mvc.dao.TestDao" %>

	<h1>updatePro 페이지</h1>
	
	<% 
		request.setCharacterEncoding("UTF-8");
		String sessionId = (String)session.getAttribute("id");
		if(sessionId == null){
			response.sendRedirect("loginForm.jsp");
		}
	%>
	
	<jsp:useBean id="dto" class="test.mvc.dao.TestDTO" />
	<jsp:setProperty property="*" name="dto"/>
	
	<%
		TestDao dao = new TestDao();
		dao.update(dto);
	%>
	<script>
		alert("수정되었습니다.");
		window.location="loginHome.jsp";
	</script>