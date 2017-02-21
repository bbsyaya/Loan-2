package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import data.DbConnect;
/*
 * 张松磊  201226010427    2015/04/28
 */
public class LoginCheck {

	//检查用户在数据库是否存在的方法
	public int userCheck(String userName,String userPassword) {
		Connection conn = null;

		try {
			//取得数据库连接
			conn = DbConnect.getConnection();
			
			String sql = "select userName,password from user where userName = ? and password = ?";
			String sql2 = "select userName,password from admin where userName = ? and password = ?";
			PreparedStatement pst = conn.prepareStatement(sql);
			//定义数据查询的两个参数
			pst.setString(1,userName);
			pst.setString(2,userPassword);
			ResultSet rs = pst.executeQuery();
			//执行查询语句
			pst.execute();
			//取得用户的用户名和密码
			if(rs.next()) {
				return 1;
			}else {
				PreparedStatement pst2 = conn.prepareStatement(sql2);
				//定义数据查询的两个参数
				pst2.setString(1,userName);
				pst2.setString(2,userPassword);
				ResultSet rs2 = pst2.executeQuery();
				//执行查询语句
				pst.execute();
				if(rs2.next()) {
					return 2;
				}else {
					return -1;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				//关闭数据库
				conn.close();
			}catch(Exception e) {}
		}
	}

}
