<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="test.mvc.dao.TestDTO" %>
<%@ page import="test.mvc.dao.TestDao" %>

	<h1>dbConnection</h1>
	<%
		/*JDBC는 단계별로 진행(1~5단계)
		 1단계 데이터베이스 드라이버 로드
		 DriverManager에 자동 등록된다.-오라클에 연결할 준비완료
		Class.forName("oracle.jdbc.driver.OracleDrive r"); // 로드할 클레스 풀네임(준비상태로 만들어줌)
		 2단계 DB에 연결
		String dburl = "jdbc:oracle:thin:@masternull.iptime.org:1521:orcl";
		String user = "java04";
		String pass = "java";
		Connection conn = DriverManager.getConnection(dburl,us\er,pass);
		Context ctx = new InitialContext(); // Context xml을 참조하는 구문
		Context j = (Context)ctx.lookup("java:comp/env"); // 자바컨포넌트 환경 설정 찾기(자바 관련, 전용으로 세팅하는 구문)
		DataSource ds = (DataSource)j.lookup("jdbc/orcl"); // 
		Connection conn = ds.getConnection();
		Connection conn = TestDao.getConnection();
		 3단계 쿼리문 작성
		String sql = "select * from test";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		 4단계 실행 
		executeQuery() - select문 실행시
		executeUpdate() - selct문을 제외한 나머지 실행시
		ResultSet rs = pstmt.executeQuery();*/
		
		
		
		TestDao dao = new TestDao();
		ArrayList list = dao.selectAll();
		
		for(int i=0; i < list.size(); i++){
			TestDTO dto = (TestDTO)list.get(i);
			%><h1> <%=dto.getId() %> <%=dto.getPw()%> <%=dto.getAdr() %> <%=dto.getName() %> <%=dto.getAge() %> <%=dto.getReg() %></h1>	
		<%}%>
	
		
		
	