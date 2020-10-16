<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="test.academy.model.AcademyDAO" %>
<%@ page import="test.academy.model.AcademyDTO" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%> 
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	<h1>insertPro 페이지</h1>
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
		dto.setBirth(mr.getParameter("birth"));
		dto.setAddress(mr.getParameter("address"));
		dto.setPhone1(mr.getParameter("phone1"));
		dto.setPhone2(mr.getParameter("phone2"));
		dto.setPhone3(mr.getParameter("phone3"));
		dto.setImg(mr.getFilesystemName("img"));
	%>
	
	<%
		AcademyDAO dao = new AcademyDAO();
		boolean result = dao.selectNum(dto.getNum());
		if(result){
			out.println("이미 등록된 학생입니다.");
		}else{
			dao.insert(dto); // 학생등록
			out.println("등록되었습니다.");
		}
	%>
	