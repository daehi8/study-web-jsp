<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.util.Enumeration" %>    

	<h1>loginPro 페이지</h1>

	<%	
		request.setCharacterEncoding("UTF-8");
		Enumeration enu = request.getParameterNames();
		while(enu.hasMoreElements()){
			String key = (String)enu.nextElement();	
			String value = request.getParameter(key);
			out.println(key+"="+value);
		}
	%>	
