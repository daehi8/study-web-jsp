<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%> 
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.File" %>
<%@ page import="java.util.ArrayList" %>

	<h1>uploadPro 페이지</h1>
	
	<%
		//String save="d://dev//save//"; // 단순 저장경로 설정
		String save = request.getRealPath("save"); // 톰캣 서버에 만들어 놓은 폴더 이름 설정 
		int size = 1024*1024*10; // 파일크기 설정 (10MB
		String enc = "UTF-8";
		DefaultFileRenamePolicy dp = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(request,save,size,enc,dp);
		
		//업로드파일 정보 확인
		String type = mr.getContentType("data");  // 파일 종류 확인
		String sn = mr.getFilesystemName("data"); // 업로드 되는 파일명
		String on = mr.getOriginalFileName("data"); // 본래 파일명
		File f = mr.getFile("data");
		long fs = f.length(); // 파일크기
		String path = f.getAbsolutePath(); // 파일 경로 
		
		
		//업로드할 파일 제한
		String [] a = type.split("/"); // 변수 type을 슬러시 기준으로 잘라서 변수a에 대입
		if(!a[0].equals("image") && !a[0].equals("text")){
			f.delete(); // 아니면 삭제
		}
		
		//업로드 제한 방법2
		ArrayList fileList = new ArrayList();
		fileList.add("image");
		fileList.add("text");
		if(!fileList.contains(a[0])){
			f.delete(); // 아니면 삭제
		}
		
	%>
	
	<h1>type = <%=type%></h1>
	<h1>systemName = <%=sn%></h1>
	<h1>originalName = <%=on%></h1>
	<h1>파일크기 = <%=fs%></h1>
	<h1>파일경로 = <%=path%></h1>
	
	<img src="/web/save/<%=sn%>" />
	
	