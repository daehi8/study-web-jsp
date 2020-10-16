<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%> 
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="test.academy.model.AcademyDTO" %>
<%@ page import="test.academy.model.AcademyDAO" %>
<%@ page import="java.io.File" %>
  <%request.setCharacterEncoding("UTF-8"); %>
	<%	
		String state = request.getParameter("state");
		String num = request.getParameter("num");
		AcademyDAO dao = new AcademyDAO();
		String img = dao.selectImg(num);
		if(img != null){
			String path = request.getRealPath("save");
			File f = new File(path+"//"+img);
			if(f.exists()){
				f.delete();
			}
		}
		// dao.delete(num);
		dao.academyState(num, state);
	%>	
		<script>
			alert("탈퇴되었습니다.")
			window.location="academyAll.jsp"
		</script>

