<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!  //!는 자바로 치면  static 변수에 해당한다.

	//DB 연결 - sql 실행 -> 현재 db에 있는 내용을 표에 뿌려보자
								//select 가 필요해,,   회원 정보를 rs에 저장해야 돼!
								//rs를 다룰때는 next와  컬럼이름으로 다루면 돼!
	//DB연결은 한번만 해놓으면 되니까. <%! 로 걸어주자
	Connection conn = null;
	Statement stmt = null;
	//데이터 가져왔을 때,  저장시켜 놓을 객체를 만들자 : ResultSet
	ResultSet rs = null;
	
	//연결할 때, 정보를 미리 만들어 놓자   jdbc:oracle:thin:@localhost:1521:xe
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String user = "scott1130";
	String pass = "tiger";
	
	//member에서 데이터 가져와
	String sql = "select * from member";
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 보기</title>
</head>
<body>
<table width="800" border="1">
	<tr>
		<th>이름</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>전화번호</th>
		<th>이메일</th>
		<th>관리자모드</th>
	</tr>
	<%
		try{
			//Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDirverz");  //MS-sql
			//Class.forName("org.gjt.mm.msql.Driver");  //mySql
			Class.forName("oracle.jdbc.driver.OracleDriver");  //오라클용 드라이버 이름
				//DriverManger 클래스한테  오라클 쓰겠다고 등록해 놓은 거다!
			
			//오라클 드라이버에서 어떤 db 이름(xe), 어떤 계정(scott1130, tiger)
			conn = DriverManager.getConnection(url, user, pass);
			
			//conn을 통해서 sql을 실행할 수 있는 명령문 등록 객체를 생성하자
			stmt = conn.createStatement();  //<--명령문(CRUD) 수행 객체
			
			//stmt 실제 명령을 수행하자!  execute() 하자! => rs에 담아 놓으면 된다.
			rs = stmt.executeQuery(sql);
			
			// rs에 행--별,  칸 들이 들어 있다.
			//행을 꺼내올 때는  rs.next() 로 꺼내오자
			//		각 행에서 칸을 꺼내오려면  rs.get타입("컬럼이름")
			
			while(rs.next()){  //행단위로 꺼내온다.
				//표 그리기
				out.print("<tr>");
				out.print("<td>"+rs.getString("name")+"</td>");
				out.print("<td>"+rs.getString("id")+"</td>");
				out.print("<td>"+rs.getString("pw")+"</td>");
				out.print("<td>"+rs.getString("phone")+"</td>");
				out.print("<td>"+rs.getString("email")+"</td>");
				out.print("<td>"+rs.getInt("admin")+"</td>");
				out.print("</tr>");
			}			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs != null) 	 rs.close();
				if(stmt != null) stmt.close();
				if(conn != null) conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		
	
	%>
</table>
</body>
</html>







