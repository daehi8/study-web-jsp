<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h1>result 페이지</h1>
	
	<% 
		String id = (String)session.getAttribute("id"); 
		String pw = (String)session.getAttribute("pw");
	%>
	
	<h1>id = <%=id %></h1>