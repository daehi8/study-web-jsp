<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	session.invalidate();						// 세션 삭제
	Cookie [] cookies = request.getCookies();	
	if(cookies != null){						// 쿠키가 있으면 = true
		for(Cookie c : cookies){				// 쿠키 id, pw, auto 삭제 후 메인으로 이동
			if(c.getName().equals("cid")){
				c.setMaxAge(0);
				response.addCookie(c);
			}
			if(c.getName().equals("cpw")){
				c.setMaxAge(0);
				response.addCookie(c);
			}
			if(c.getName().equals("cauto")){
				c.setMaxAge(0);
				response.addCookie(c);
			}
		}
	}
	response.sendRedirect("main.jsp");
%>