<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h1>scopeResult 페이지</h1>
	<%
		String r1 = (String)request.getAttribute("r1");
		String s1 = (String)session.getAttribute("s1");
		String a1 = (String)application.getAttribute("a1");
	%>
	<h1>requestAttr = <%=r1 %></h1>
	<h1>sessiontAttr = <%=s1 %></h1>
	<h1>applicationAttr = <%=a1 %></h1>