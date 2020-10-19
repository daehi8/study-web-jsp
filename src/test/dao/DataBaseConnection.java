package test.dao;

//sql ��Ű��
import java.sql.Connection;
import javax.sql.DataSource;

//
import javax.naming.Context;
import javax.naming.InitialContext;

public class DataBaseConnection {
	public static Connection getConnection() throws Exception{
		
		Context ctx = new InitialContext(); // ��ü ctx ���� - Context xml ���� ����
		Context j = (Context)ctx.lookup("java:comp/env"); // ���� ���α׷� ȯ�� �׸�-�ڹ�������Ʈ ȯ�� ����(�ڹ� ����, �������� �����ϴ� ����)
		
		DataSource ds = (DataSource)j.lookup("jdbc/orcl"); //Get DataSource - Ŀ�ؼ� Ǯ ���
		Connection conn = ds.getConnection(); //DB�� ����
		return conn;	
	}
}
