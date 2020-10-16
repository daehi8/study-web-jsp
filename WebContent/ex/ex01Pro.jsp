<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Timestamp" %>
    
<title>가입확인</title>    
	<%
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String bY = request.getParameter("birth_yy");
		String bM = request.getParameter("birth_mm");
		int bD = Integer.parseInt(request.getParameter("birth_dd"));
		String eM1 = request.getParameter("email_1");
		String eM2 = request.getParameter("email_2");
		//id pw name gender birth_yy birth_mm birth_dd email_1 
		
		String bDR;
		if(bD > 0 && bD < 10){
			bDR="0"+bD;
		}else bDR=""+bD;
		
		
		Class.forName("oracle.jdbc.driver.OracleDriver"); // 로드할 클레스 풀네임(준비상태로 만들어줌)
		String dburl = "jdbc:oracle:thin:@masternull.iptime.org:1521:orcl";
		String user = "java04";
		String pass = "java";
		Connection conn = DriverManager.getConnection(dburl,user,pass);
		
		String sql = "insert into ex values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setString(4, gender);
		pstmt.setString(5, bY);
		pstmt.setString(6, bM);
		pstmt.setString(7, bDR);
		pstmt.setString(8, eM1);
		pstmt.setString(9, eM2);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		
	%>

<body bgcolor="#F6F6F6">


<center>
    <b><font size="10" color="#8041D9"> 가입확인 </font></b>
	<table>
	<tr> <td> 아이디 = <%=id %></td> </tr>
		 <tr><td>  비밀번호 = <%=pw %></td> </tr>
		 <tr><td> 이름 = <%=name%></td> </tr>
		<tr> <td>  성별 = <%=gender%></td> </tr>
		 <tr><td>  생년월일 = <%=bY%>년<%=bM%>월<%=bDR%>일</td> </tr>
		<tr> <td>  이메일 = <%=eM1%> @ <%=eM2%></td> </tr>
	
	 </table>
</center>	 
</body>