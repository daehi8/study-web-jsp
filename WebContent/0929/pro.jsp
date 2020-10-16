<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>pro 페이지</h1>

<%

	String step = request.getParameter("step");

%>


 	<h1> id = <%=request.getParameter("id") %></h1>
 	 	<h1> password = <%=request.getParameter("pw") %></h1>
 	 	<h1> step = <%=step%></h1>