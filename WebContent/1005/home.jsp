<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>home 페이지</h1>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
%>

	<h1>id = <%=id %></h1>
	<h1>name = <%=name %></h1>