<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String ip=request.getRemoteAddr();
		int port = request.getRemotePort();
		String sName = request.getServerName();
		int sPort = request.getServerPort();
		String uri = request.getRequestURI();
		StringBuffer sb = request.getRequestURL();
	%>
	<h1>접속 URI = <%=uri %></h1>
	<h1>접속 URL = <%=sb %></h1> 
	<h1>사용자 IP = <%=ip %></h1> 
	<h1>사용자 port = <%=port %></h1> 
	<h1>서버 이름 = <%=sName %></h1> 
	<h1>서버 port = <%=sPort %></h1> 
	
