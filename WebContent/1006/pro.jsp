<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>pro 페이지</h1>
	<%
		request.setCharacterEncoding("UTF-8");
		//FormDTO dto = new FormDTO();
	%>
	
	<%--<jsp:useBean> 객체생성태그/기본생성자만 사용해서 객체생성한다. --%>
	<jsp:useBean id="dto" class="test.mvc.model.FormDTO" />
	<jsp:useBean id="data" class="test.mvc.model.DataDTO" />
	
	<%-- name = "변수명"  property = "파라미터명" --%>
	<jsp:setProperty name="dto" property="id" />
	<jsp:setProperty name="dto" property="pw" />
	<jsp:setProperty name="dto" property="age" />
	<%-- 또는 <jsp:setProperty name="dto" property="*" /> --%>
	<jsp:setProperty name ="data" property="*" />
	
	<h1> id : <jsp:getProperty name="dto" property="id" /> </h1>
	<h1> pw : <jsp:getProperty name="dto" property="pw" /> </h1>
	<h1> name : <jsp:getProperty name="data" property="name" /> </h1>
	<h1> age : <jsp:getProperty name="dto" property="age" /> </h1>
	<h1> tel : <jsp:getProperty name="data" property="tel" /> </h1>
	
	