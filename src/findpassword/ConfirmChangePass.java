package findpassword;

import java.sql.Connection;
import java.sql.PreparedStatement;

import data.DbConnect;

public class ConfirmChangePass {
	/*
	 * ������  201226010427    2015/05/01
	 */
	
	//�������ݿ��û�����ķ���
	public void confirmPass(String userName,String userPassword) {
		
		Connection conn = null;
		
		try {
			new DbConnect();
			//ȡ�����ݿ������
			conn = DbConnect.getConnection();
			//�������ݿ�������
			String updateSql = null;
			
			//�û����ݿ�������
			updateSql = "Update user set password = ? Where userName = ?";
			
			PreparedStatement pst = conn.prepareStatement(updateSql);
			pst.setString(1,userPassword);
			pst.setString(2,userName);
			pst.executeUpdate();
					
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			}catch(Exception e) {}
		}
	}

}
