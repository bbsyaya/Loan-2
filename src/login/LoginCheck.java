package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import data.DbConnect;
/*
 * ������  201226010427    2015/04/28
 */
public class LoginCheck {

	//����û������ݿ��Ƿ���ڵķ���
	public int userCheck(String userName,String userPassword) {
		Connection conn = null;

		try {
			//ȡ�����ݿ�����
			conn = DbConnect.getConnection();
			
			String sql = "select userName,password from user where userName = ? and password = ?";
			String sql2 = "select userName,password from admin where userName = ? and password = ?";
			PreparedStatement pst = conn.prepareStatement(sql);
			//�������ݲ�ѯ����������
			pst.setString(1,userName);
			pst.setString(2,userPassword);
			ResultSet rs = pst.executeQuery();
			//ִ�в�ѯ���
			pst.execute();
			//ȡ���û����û���������
			if(rs.next()) {
				return 1;
			}else {
				PreparedStatement pst2 = conn.prepareStatement(sql2);
				//�������ݲ�ѯ����������
				pst2.setString(1,userName);
				pst2.setString(2,userPassword);
				ResultSet rs2 = pst2.executeQuery();
				//ִ�в�ѯ���
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
				//�ر����ݿ�
				conn.close();
			}catch(Exception e) {}
		}
	}

}
