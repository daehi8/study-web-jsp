<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


	<h1> uploadForm 페이지 </h1>
	
	<form action="uploadPro.jsp" method="post" enctype="multipart/form-data">
		이름 : <input type="text" name="name" /> <br />
		파일 : <input type="file" name="data" /> <br />
				<input type="submit" value="전송" />
	</form>