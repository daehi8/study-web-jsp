<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<h1>a</h1>
	
	<a href="b.jsp?id=move1" >�̵�1</a> <br />
	
	<button onclick="window.location='b.jsp?id=move2'">�̵�2</button>
	
	<form action="b.jsp?id=move3">
		<input type="submit" name="id" value="�̵�3">
	</form>