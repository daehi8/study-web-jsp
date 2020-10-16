<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "test.mvc.dao.TestDTO" %>
<%@ page import = "test.mvc.dao.TestDao" %>
    <%
	String sessionId = (String)session.getAttribute("id");
	if(sessionId == null){
	response.sendRedirect("loginForm.jsp");
}
    %>
    
    <jsp:useBean id = "dto" class = "test.mvc.dao.TestDTO" />
    <jsp:setProperty property="*" name="dto"/>

<%--
   		<%
   		TestDao dao = new TestDao();
   		boolean result = dao.loginCheck(dto);
   		if(result){
    		dao.delete(dto);
    		session.invalidate();
    		%>
    		<script>
    			alert("탈퇴되었습니다");
    			window.location = "main.jsp"
    		</script>
    	<%}else{%>
    		<script>
    			alert("비밀번호가 맞지 않습니다.");
    			window.location = "deleteForm.jsp"
    		</script>		
    	<%}%>

--%>




   		<%
   		TestDao dao = new TestDao();
   		if(session.getAttribute("pw").equals(request.getParameter("pw"))){
    		dao.delete(dto);
    		session.invalidate();
    		%>
    		<script>
    			alert("탈퇴되었습니다");
    			window.location = "main.jsp"
    		</script>
    	<%}else{%>
    		<script>
    			alert("비밀번호가 맞지 않습니다.");
    			window.location = "deleteForm.jsp"
    		</script>		
    	<%}%>
