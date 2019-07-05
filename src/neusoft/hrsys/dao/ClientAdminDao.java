
package neusoft.hrsys.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



/**
 * 参考HrAdminDao
 * 用户登录
 */

public class ClientAdminDao extends FactoryDataBase{
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	/**
	 * ����Ա��¼����
	 * @param username
	 * @param password
	 * 
	 * @return
	 */
	public boolean login(String username,String password) {
		String sql = "select * from custom_login where username = ? and password = ?";
		try {
			pstmt = getConn().prepareStatement(sql);
			pstmt.setString(1,username );
			pstmt.setString(2,password );
			rs = pstmt.executeQuery();
			if(rs.next()) {
				System.out.println("good");
				return true;
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs, pstmt, null);
		}
		return false;
	}
	
}

