<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.mvc.dao.TestDao" %>
<%@ page import="test.mvc.dao.TestDTO" %>

    <h1>myInfo 페이지</h1>
    <%
		String sessionId = (String)session.getAttribute("id");
		if(sessionId == null){
			response.sendRedirect("loginForm.jsp");
		}
		TestDao dao = new TestDao();
		TestDTO dto = dao.myInfo(sessionId);
	%>
	<form action="updatePro.jsp" method="post">
		id : <%=dto.getId() %> <br />
			<input type="hidden" name="id" value="<%=dto.getId() %>" />
 		pw : <input type="password" name="pw" value="<%=dto.getPw() %>" /> <br />
		name : <input type="text" name="name" value="<%=dto.getName() %>" /> <br />
		age : <input type="text" name="age" value="<%=dto.getAge() %>" /> <br />
		가입날짜 : <%=dto.getReg() %> <br />
		
		<input type="submit" value="수정하기">
	</form>