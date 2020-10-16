<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<h1>loginForm 페이지</h1>
	
	<%
	// 자동로그인상태
	// 쿠키페이지 이동
	String id = null, pw = null, auto = null;
	Cookie [] cookies = request.getCookies();
	if(cookies != null){
		for(Cookie c : cookies){
			if(c.getName().equals("cid")) id = c.getValue();
			if(c.getName().equals("cpw")) pw = c.getValue();
			if(c.getName().equals("cauto")) auto = c.getValue();
		}
	}
	if (auto != null && id != null && pw != null){
		response.sendRedirect("cookiePro.jsp");
	}
	%>
	
	<form action="cookiePro.jsp" method="post">
		id : <input type="text" name="id" /> <br />
		pw : <input type="password" name="pw" /> <br />
			<input type="checkbox" name = "auto" value="1">자동로그인 <br />
			<input type="submit" value="로그인" /> <br />
	</form>