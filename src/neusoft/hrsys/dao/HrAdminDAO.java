package neusoft.hrsys.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class HrAdminDAO extends FactoryDataBase{
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	/**
	 * ����Ա��¼����
	 * @param username
	 * @param password
	 * @param level
	 * @return
	 */
	public boolean login(String custel,String cuspwd,int level) {
		String sql = "select * from custom_login where custel = ? and cuspwd = ? and level = ?";

		try {
			pstmt = getConn().prepareStatement(sql);
			pstmt.setString(1,custel);
			pstmt.setString(2,cuspwd);
			pstmt.setInt(3,level);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				System.out.println("ok");
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rs, pstmt, null);
		}
		System.out.println("登陆失败???");
		return false;
	}

	/**
	 * 测试登录
	 * @param args
	 */
	public static void main(String[] args) {
		HrAdminDAO aa= new HrAdminDAO();
		aa.login("111","222",1);
	}

	
}
