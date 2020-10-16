package test.woochan.hong;
//4가지 필수 참조 사함
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import test.dao.DataBaseConnection;

public class WooChanDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public void insert(WooChanDTO dto) {
		try {
			
			conn = DataBaseConnection.getConnection();
			String sql = "insert into woochan values(?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getName());
			pstmt.executeUpdate();	
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}
	}//insert

	private void closeAll() {
		if(rs != null) {try{rs.close();}catch(SQLException s) {}}
		if(pstmt != null) {try{pstmt.close();}catch(SQLException s) {}}
		if(conn != null) {try{conn.close();}catch(SQLException s) {}}
		
	}
	
}
