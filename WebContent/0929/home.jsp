<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<% for(int a=0; a<3; a++){ %>
		<h1>hello</h1>
	<% }%>
	
	<%String [] str = {"java", "jsp","test"};%>
	<table border="1">
		<tr> <td>번호</td><td>제목</td></tr> 
		<%for(int a=0; a<str.length; a++){ %>
			<tr> <td><%=a%></td><td><%=str[a]%></td> </tr>
		<%} %>
	</table>
	
	<% String c = "green";%>
	<h1 color="<%=c%>"/>