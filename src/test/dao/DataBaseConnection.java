package test.dao;

//sql 패키지
import java.sql.Connection;
import javax.sql.DataSource;

//
import javax.naming.Context;
import javax.naming.InitialContext;

public class DataBaseConnection {
	public static Connection getConnection() throws Exception{
		
		Context ctx = new InitialContext(); // 객체 ctx 생성 - Context xml 참조 구문
		Context j = (Context)ctx.lookup("java:comp/env"); // 응용 프로그램 환경 항목-자바컨포넌트 환경 설정(자바 관련, 전용으로 세팅하는 구문)
		
		DataSource ds = (DataSource)j.lookup("jdbc/orcl"); //Get DataSource - 커넥션 풀 사용
		Connection conn = ds.getConnection(); //DB에 연결
		return conn;	
	}
}
