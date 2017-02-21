package changepassword;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import data.DbConnect;

public class VerifyUser {
	/*
	 * ������201226010427 2015/5/29
	 */
	
	
	public int check(String userName,String tel,String ques,String ans) {
		Connection conn = null;
		try {
			//ȡ�����ݿ������
			conn = new DbConnect().getConnection();
			//�����û�������ݿ��ѯ���
			String sql = "select userName from user where userName = ? and mobilePhone = ? and question = ? and answer = ?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,userName);
			pst.setString(2,tel);
			pst.setString(3,ques);
			pst.setString(4,ans);
			ResultSet rs = pst.executeQuery();
			pst.execute();
			if(rs.next()) {
				return 1;   //����û��ǹ���Ա������3
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
