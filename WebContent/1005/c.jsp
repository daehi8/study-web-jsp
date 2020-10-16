<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>c</h1>
	
	<%
		String num = (String)request.getAttribute("num");
		String id = request.getParameter("id");
	%>
		<h1>id = <%=id%></h1>
		<h1>num = <%=num %></h1>