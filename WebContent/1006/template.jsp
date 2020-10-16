<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String corp = request.getParameter("corp");
	%>
<center>
	<h1>template 페이지</h1>
	<table border="1" width="1000" height="700">
		<tr><td>
			<jsp:include page="top.jsp">
				<jsp:param name="id" value="<%=id %>"/>
			</jsp:include>
		</td></tr>
	
		<tr><td><jsp:include page="main.jsp"></jsp:include></td></tr>
	
		<tr><td>
			<jsp:include page="bottom.jsp">
				<jsp:param name="corp" value="<%=corp %>" />
			</jsp:include>
		</td></tr>
	</table>
</center>



