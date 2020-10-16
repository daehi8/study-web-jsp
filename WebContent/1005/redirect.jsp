<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h1>redirect 페이지</h1>
	
	<%
		String ra = request.getParameter("ra");
		if(ra.equals("1")){
		response.sendRedirect("form.jsp");
		}else{
			response.sendRedirect("home.jsp");
		}
	%>