package neusoft.hrsys.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import neusoft.hrsys.entity.UserBalance;

public class UserBalanceDao extends FactoryDataBase{
	
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	/**
	 * 查询客户余额方法
	 * @return
	 */
	public ArrayList queryUserBalance() {
		String sql = "select * from userbalance";
		ArrayList list = new ArrayList();
		try {
			pstmt = getConn().prepareStatement(sql);
			rs = pstmt.executeQuery();
			//处理结果集：把结果集中的数据导入到list集合中
			while(rs.next()) {
				String mtel = rs.getString("mtel");
				double mbal=  rs.getDouble("mbal");
				double mflow = rs.getDouble("mflow");
				UserBalance balance = new UserBalance(mtel,mbal,mflow);
				list.add(balance);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(null, pstmt, null);
		}
		return list;
	}
		/**
		 * 修改客户余额
		 * @param did
		 * @param dname
		 * @param dloc
		 */
		public void updateUserBalance(String mtel, double mbal, double mflow) {
			String sql = "update department set mbal = ?,mflow = ? where mtel = ?";
			try {
				pstmt = getConn().prepareStatement(sql);
				pstmt.setDouble(1, mbal);
				pstmt.setDouble(2, mflow);
				pstmt.setString(3, mtel);
				pstmt.executeUpdate();	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				close(null, pstmt, null);
			}
		}
	}