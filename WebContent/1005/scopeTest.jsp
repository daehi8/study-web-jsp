<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>scopeTest 페이지</h1>
<% // Map 타입 			key, value
	request.setAttribute("r1", "100");
	session.setAttribute("s1", "200");//로그인 방식에 쓰이는 것
	application.setAttribute("a1", "300");
%>