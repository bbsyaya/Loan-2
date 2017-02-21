package changepassword;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import data.DbConnect;

public class VerifyUser {
	/*
	 * 张松磊201226010427 2015/5/29
	 */
	
	
	public int check(String userName,String tel,String ques,String ans) {
		Connection conn = null;
		try {
			//取得数据库的连接
			conn = new DbConnect().getConnection();
			//定义用户表的数据库查询语句
			String sql = "select userName from user where userName = ? and mobilePhone = ? and question = ? and answer = ?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,userName);
			pst.setString(2,tel);
			pst.setString(3,ques);
			pst.setString(4,ans);
			ResultSet rs = pst.executeQuery();
			pst.execute();
			if(rs.next()) {
				return 1;   //如果用户是管理员，返回3
			}else {
				return 0;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}finally {
			try {
				conn.close();
			}catch(Exception e) {}
		}
	}
	
}
