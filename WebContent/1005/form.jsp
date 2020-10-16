<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h1>loginForm 페이지</h1>
	<form action="loginPro.jsp" method="get">
		<input type="hidden" name="msg" value="100" />
	
		id : <input type="text" name="id" /> <br />
		pw : <input type="password" name="pw" /> <br />
		
		과목 : <input type="checkbox" name="ch" value="java"/> java
			  <input type="checkbox" name="ch" value="jsp"/> jsp
			  <input type="checkbox" name="ch" value="data"/> data
			<br />
			
			 <input type="submit" value="로그인" />
	</form>