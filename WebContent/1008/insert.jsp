<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="test.mvc.dao.TestDao" %>

	
	<h1>insert</h1>
	<% request.setCharacterEncoding("UTF-8");%>
	
	<jsp:useBean id="dto" class="test.mvc.dao.TestDTO" />
	<jsp:setProperty property="*" name="dto" />
	
	<%	
		TestDao dao = new TestDao();
	 	dao.insert(dto);
	%>
		<h1>추가되었습니다.</h1>
	
	
	