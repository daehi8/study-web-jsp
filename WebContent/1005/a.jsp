<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<h1>a</h1>
	
	<a href="b.jsp?id=move1" >이동1</a> <br />
	
	<button onclick="window.location='b.jsp?id=move2'">이동2</button>
	
	<form action="b.jsp?id=move3">
		<input type="submit" name="id" value="이동3">
	</form>