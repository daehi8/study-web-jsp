<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"  %>
<%@ page import="test.academy.model.AcademyDTO"  %>
<%@ page import="test.academy.model.AcademyDAO"  %>
	
	<%request.setCharacterEncoding("UTF-8"); %>
	
	<h1>academyAll 페이지</h1>
	<%
		AcademyDAO dao = new AcademyDAO();
		ArrayList list = dao.selectAll();
		if(list.size() > 0){
			for(int i=0; i<list.size(); i++){
				AcademyDTO dto = (AcademyDTO)list.get(i);
			%><a href ="academyInfo.jsp?num=<%=dto.getNum()%>&id=abc"><%=dto.getName() %></a> 
			/ <%=dto.getNum() %> / <%=dto.getAddress() %> / <%=dto.getPhone() %> / <%=dto.getBirth() %>
			<a href = "academyDel.jsp?num=<%=dto.getNum()%>&state=6">탈퇴</a> <br />

		<%}
		}
	%>
	