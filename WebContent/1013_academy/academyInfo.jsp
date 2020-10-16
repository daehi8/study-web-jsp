<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "test.academy.model.AcademyDTO"%>
<%@ page import= "test.academy.model.AcademyDAO"%>

<%
	String num = request.getParameter("num");
	AcademyDAO dao = new AcademyDAO();
	AcademyDTO dto = dao.academyInfo(num);
%>
<form action = "academyUpdate.jsp" method = "post" enctype = "multipart/form-data">
	이름 : <input type= "text" name ="name" value="<%=dto.getName() %>"/><br />
	번호 : <input type= "text" name ="phone" value="<%=dto.getPhone() %>"/><br />
	주소 : <input type= "text" name ="address" value="<%=dto.getAddress() %>"/><br />
	<input type="file" name="img" /> <br />
	<input type="hidden" name = "sysImg" value="<%=dto.getImg() %>"/>
	<input type="hidden" name = "num" value="<%=dto.getNum() %>"/>
	<img src = "/web/save/<%=dto.getImg()%>"/>
	<input type ="submit" value ="정보수정"/>
</form>