<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>main page</h1>

<%
	if(session.getAttribute("id") == null){ 		// 세션 = null -> true
		String id = null, pw = null, auto = null;	// 쿠키 확인
		Cookie [] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie c : cookies){
				if(c.getName().equals("cid")) id = c.getValue();
				if(c.getName().equals("cpw")) pw = c.getValue();
				if(c.getName().equals("cauto")) auto = c.getValue();
			}
		}
		if (auto != null && id != null && pw != null){		// 쿠키가 있으면 -> true
			response.sendRedirect("cookiePro.jsp");			// 세션 생성
		}else{
			response.sendRedirect("loginForm.jsp"); 		// 쿠키 = null -> flase
		}
	}else{
		out.println("로그인 되었습니다.");				// 세션이 있으면 -> true
	}
%>
	<button onclick = "window.location='logout.jsp'">로그아웃</button>







<%--
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
--%>
