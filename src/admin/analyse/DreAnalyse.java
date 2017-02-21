package admin.analyse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import admin.analyse.Analyse;

public class DreAnalyse {
	
	/**
	 * ������201226010427 2015/6/3
	 */
	private static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	
	/**
	 * ���ݿ������ַ���
	 */
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/userdb?characterEncoding=utf8";
	
	/**
	 * ���ݿ��û���
	 */
	private static final String USER_NAME = "root";
	
	/**
	 * ���ݿ�����
	 */
	private static final String PASSWORD = "123456";
	
	/**
	 * ���ݿ�������
	 */
	private static Connection conn;
	
	/**
	 * ���ݿ������
	 */
	private static Statement stmt;
	
	
	
	// ��������
	static{
		try {
			Class.forName(DRIVER_CLASS);
		} catch (Exception e) {
			System.out.println("������������");
			System.out.println(e.getMessage());
		}
	}
	
	// ȡ������
	private static Connection getConnection(){
		
		try {
			conn = DriverManager.getConnection(DATABASE_URL, USER_NAME, PASSWORD);
		} catch (Exception e) {
			System.out.println("ȡ�����Ӵ���");
			System.out.println(e.getMessage());
		}
		return conn;
	}
	
	
	public void ExecuteDel(String sql){
		
		try {
			stmt = getConnection().createStatement();
		} catch (Exception e) {
			System.out.println("statementȡ�ô���");
			System.out.println(e.getMessage());
		}
		
		try {
			int rows = stmt.executeUpdate(sql);
			if(rows >= 1){
				System.out.println("�ɹ�ɾ��.....");
			} else {
				System.out.println("ɾ��ʧ��.....");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}
	
	public ArrayList<Analyse> getAnalyseList(String sql){
		
		ArrayList<Analyse> list = new ArrayList<Analyse>();
		
		// ȡ�����ݿ��������
		try {
			stmt = getConnection().createStatement();
		} catch (Exception e) {
			System.out.println("statementȡ�ô���");
			System.out.println(e.getMessage());
			return null;
		}
		
		try {
			
			// ��ѯ���ݿ����,���ؼ�¼��(�����)
			ResultSet rs = stmt.executeQuery(sql);
			
			// ѭ����¼�����鿴ÿһ��ÿһ�еļ�¼
			while (rs.next()) {
				int id = rs.getInt("id");
				String user = rs.getString("user");
				String analyseTitle = rs.getString("analyseTitle");
				Date date  = rs.getDate("date");
				String analyse = rs.getString("analyse");
				
				Analyse analyses = new Analyse();
				
				analyses.setId(id);
				analyses.setUser(user);
				analyses.setAnalyseTitle(analyseTitle);
				analyses.setDate(date);
				analyses.setAnalyse(analyse);
				
				list.add(analyses);
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
