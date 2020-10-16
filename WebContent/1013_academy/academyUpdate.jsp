<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%> 
<%@ page import="com.oreilly.servlet.MultipartRequest" %>    
<%@ page import="test.academy.model.AcademyDTO" %>
<%@ page import="test.academy.model.AcademyDAO" %>
    
	<%request.setCharacterEncoding("UTF-8"); %>
	<%
		String save = request.getRealPath("save"); // 톰캣 서버에 만들어 놓은 폴더 이름 설정 
		int size = 1024*1024*10; // 파일크기 설정 (10MB
		String enc = "UTF-8";
		DefaultFileRenamePolicy dp = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(request,save,size,enc,dp);
		
		AcademyDTO dto = new AcademyDTO();
		dto.setNum(mr.getParameter("num"));
		dto.setName(mr.getParameter("name"));
		dto.setPhone(mr.getParameter("phone"));
		dto.setAddress(mr.getParameter("address"));
		
		String img = mr.getFilesystemName("img");
		String sysImg = mr.getParameter("sysImg");
		if(img == null){
			dto.setImg(sysImg);
		}else{
			dto.setImg(img);
		}
		
		AcademyDAO dao = new AcademyDAO();
		dao.academyUpdate(dto);
	%>
	
	<script>
		alert("수정되었습니다.")
		window.location="academyAll.jsp"
	</script>
	
		
    