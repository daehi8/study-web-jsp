<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h1>insertForm 페이지</h1>
	
	<%request.setCharacterEncoding("UTF-8"); %>
	
	<form action="insertPro.jsp" method="post" enctype="multipart/form-data">
		학생 이름 : <input type="text" name="name" /> <br />
		학생 주민번호 : <input type="text" name="num" /> <br />
		학생 주소 : <input type="text" name="address" /> <br />
		학생 폰번호 : <input type="text" name="phone1" />- 
		          <input type="text" name="phone2" />-
				  <input type="text" name="phone3" /> <br />
		생년월일 : <input type="date" name="birth" /> <br />
		학생사진 : <input type="file" name="img"/> <br />
				<input type="submit" value="등록" /> <br />
	</form>