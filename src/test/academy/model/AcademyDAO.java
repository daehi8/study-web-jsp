package test.academy.model;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import test.dao.DataBaseConnection;

public class AcademyDAO {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public void insert(AcademyDTO dto) {
		try {
			conn = DataBaseConnection.getConnection();
			String sql = "insert into academy values(?,?,?,?,?,0,sysdate,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getNum());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPhone());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getBirth());
			pstmt.setString(6, dto.getImg());
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();//전부 종료
		}
	}
	
	//중복체크
	public boolean selectNum(String num) {
		boolean result = false; 
		try {
			conn = DataBaseConnection.getConnection();
			String sql = "select * from academy where num=?";
			pstmt = conn.prepareStatement(sql);		
			pstmt.setString(1, num); // 첫번째 레코드 주민번호 스트링타입으로 집어넣기
			rs = pstmt.executeQuery(); //resultSet
			if(rs.next()) {
				result = true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return result;
	}//selectNum
	
	
	public ArrayList selectAll() {
		ArrayList list = new ArrayList();
		try {
			conn = DataBaseConnection.getConnection();
			pstmt = conn.prepareStatement("select * from academy");
			rs = pstmt.executeQuery();//실행 메소드
			while(rs.next()) {
				AcademyDTO dto = new AcademyDTO();
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setAddress(rs.getString("address"));
				dto.setPhone(rs.getString("phone"));
				dto.setState(rs.getInt("state"));
				dto.setBirth(rs.getTimestamp("birth").toString());
				dto.setReg(rs.getTimestamp("reg"));
				list.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return list;
	}
	
	
	
	public AcademyDTO academyInfo(String num) {
		AcademyDTO dto = new AcademyDTO();
		try {
			conn = DataBaseConnection.getConnection();
			String sql = "select * from academy where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setPhone(rs.getString("phone"));
				dto.setAddress(rs.getString("address"));
				dto.setBirth(rs.getString("birth").toString());
				dto.setState(rs.getInt("state"));
				dto.setReg(rs.getTimestamp("reg"));
				dto.setImg(rs.getString("img"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return dto;
	}
	public  void academyUpdate(AcademyDTO dto) {
		try {
			conn = DataBaseConnection.getConnection();
			String sql = "update academy set name=?,phone=?,address=?,img=? where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPhone());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getImg());
			pstmt.setString(5, dto.getNum());
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			closeAll();
		}
	}
	
		
	public String selectImg(String num) {
		String img = null;
		try {
			conn = DataBaseConnection.getConnection();
			String sql = "select img from academy where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				img = rs.getString("img");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}
		return img;
	}
		
	
	public void delete(String num) {
		try {
			conn = DataBaseConnection.getConnection();
			String sql = "delete from academy where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			closeAll();
		}
	}
	
	
	public void academyState(String num, String state){
	try {
		conn = DataBaseConnection.getConnection();
		String sql = "update academy set state=? where num=?";
		pstmt = conn.prepareStatement(sql);
		int s = Integer.parseInt(state);
		pstmt.setInt(1, s);
		pstmt.setString(2, num);
		pstmt.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		closeAll();
	}
}
	
	private void closeAll() {
			if(rs != null) {try {rs.close();}catch(SQLException s) {}}
			if(pstmt != null) {try {pstmt.close();}catch(SQLException s) {}}
			if(conn != null) {try {conn.close();}catch(SQLException s) {}}
	}
	
}//AcademyDAO
