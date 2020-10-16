<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("UTF-8"); %>    

<%@ page import="test.woochan.hong.WooChanDAO" %>

	<jsp:useBean id="dto" class="test.woochan.hong.WooChanDTO" />
	<jsp:setProperty property="*" name="dto"/>
	
	<%
		WooChanDAO dao = new WooChanDAO();
		dao.insert(dto);//등록
	%>