<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>main page</h1>

<%
	Cookie ck[] = request.getCookies();		//여러개의 쿠키를 받는경우를 위해 배열로 생성
	String value = null;
	for(Cookie c : ck){
		String name = c.getName();
		if(name.equals("auto")){
			c.setMaxAge(60*60*24*5);
			response.addCookie(c);
		}
		if(name.equals("id")){
			value = c.getValue();
			c.setMaxAge(60*60*24*5);
			response.addCookie(c);
		}
	}
	if(value == null){
		response.sendRedirect("loginForm.jsp");
	}else{
		out.println(value+"님 로그인 되었습니다");
	}
%>

	<button onclick = "window.location='logout.jsp'">로그아웃</button>