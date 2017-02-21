package findpassword;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import data.DbConnect;

public class ChangePass {
	/*
	 * ������  201226010427    2015/05/01
	 */
	
	//����û��Ƿ���ڵķ���
	public int check(String userName,String mobilePhone,String question,String answer) {
		Connection conn = null;
		try {
			new DbConnect();
			//ȡ�����ݿ������
			conn = DbConnect.getConnection();
			//�������Ա������ݿ��ѯ���
			String sql = "select userName from user where userName = ? and mobilePhone = ? and question = ? and answer = ?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,userName);
			pst.setString(2,mobilePhone);
			pst.setString(3,question);
			pst.setString(4,answer);
			ResultSet rs = pst.executeQuery();
			pst.execute();
			if(rs.next()) {
				return 1;   //����û����ڷ���1
			}else 
			{
				return -1;
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
