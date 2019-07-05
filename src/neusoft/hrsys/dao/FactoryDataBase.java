package neusoft.hrsys.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FactoryDataBase {
	private Connection conn = null;
	
	public FactoryDataBase(){
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://10.25.112.176:3306/telreprotform?useUicode=true&characterEncoding=UTF-8","root","");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * �رշ���
	 */
	public void close(ResultSet rs,PreparedStatement pstmt,Connection conn) {
		try {
			if(rs != null) {
				rs.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
			if(conn != null) {
				conn.close();
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	/**
	 * ��ȡ���Ӷ���
	 * @return
	 */
	public Connection getConn() {
		return conn;
	}

	 
}
