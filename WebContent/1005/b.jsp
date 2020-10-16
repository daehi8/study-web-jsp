<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>b</h1>

	<%
		request.setAttribute("num", "9999");
		//response.sendRedirect("c.jsp"); // 단순페이지만 이동
		//request.getRequestDispatcher("c.jsp").forward(request, response); // 입력된 정보를 가지고 이동한다
	%>
		<jsp:forward page="c.jsp" />