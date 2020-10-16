<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	Cookie ck[] = request.getCookies();		//여러개의 쿠키를 받는경우를 위해 배열로 생성
	String value = null;
	for(Cookie c : ck){
		String name = c.getName();
		if(name.equals("id")){
			c.setMaxAge(0);
			response.addCookie(c);
		}
	}
	response.sendRedirect("main.jsp");
	%>