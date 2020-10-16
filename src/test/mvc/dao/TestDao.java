package test.mvc.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.ArrayList;

//dao = ������ ���̽��� ���õ� �ҽ���� ���� ǥ���ϱ� ���� ���̴� �̸�.

public class TestDao {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private static Connection getConnection() throws Exception{
		Context ctx = new InitialContext(); // Context xml ���� ����
		Context j = (Context)ctx.lookup("java:comp/env"); // �ڹ�������Ʈ ȯ�� ����(�ڹ� ����, �������� �����ϴ� ����)
		DataSource ds = (DataSource)j.lookup("jdbc/orcl"); // Ŀ�ؼ� Ǯ ���
		Connection conn = ds.getConnection();
		return conn;	
	}
	
	public ArrayList selectAll() {
		ArrayList list = new ArrayList(); // ResultSet ����� ����
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from test");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TestDTO dto = new TestDTO();
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setAdr(rs.getString("adr"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age")+"");
				dto.setReg(rs.getTimestamp("reg"));
				list.add(dto);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public void insert(TestDTO dto) {
		try {
			conn = getConnection();
			String sql = "inset into test values(?,?,?,?,?,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getAdr());
			pstmt.setString(4, dto.getName());
			
			int age = Integer.parseInt(dto.getAge());
			pstmt.setInt(5, age);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean loginCheck(TestDTO dto) {
		boolean result = false;
		try{
			conn = getConnection();
			String sql = "select * from test where id=? and pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return result;
	}
	
	public TestDTO myInfo(String sessionId) {
		TestDTO dto = new TestDTO();
		try{
			conn = getConnection();
			String sql = "select * from test where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sessionId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("pw"));
				dto.setAdr(rs.getString("adr"));
				dto.setName(rs.getString("name"));
				dto.setAge(rs.getInt("age")+"");
				dto.setReg(rs.getTimestamp("reg"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return dto;
	}//TestDTO myInfo
	
	public void update(TestDTO dto) {
		try{
			conn = getConnection();
			String sql = "update test set pw=?, name=?, age=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getPw());
			pstmt.setString(2, dto.getName());
			int age = Integer.parseInt(dto.getAge());
			pstmt.setInt(3,age);
			pstmt.setString(4, dto.getId());
			pstmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}	
	}
	
    public void delete(TestDTO dto){
    	try{
    		conn = getConnection();
    		String sql = "delete from test where id=? and pw=?";
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, dto.getId());
    		pstmt.setString(2, dto.getPw());
    		pstmt.executeUpdate();
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		closeAll();
    	}
    }
	
	
	private void closeAll() {
		if(rs != null) {try {rs.close();}catch(SQLException s) {}}
		if(pstmt != null) {try {pstmt.close();}catch(SQLException s) {}}
		if(conn != null) {try {conn.close();}catch(SQLException s) {}}
	}
	
}//TestDao





