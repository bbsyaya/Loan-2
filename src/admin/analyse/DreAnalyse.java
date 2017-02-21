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
	 * 张松磊201226010427 2015/6/3
	 */
	private static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	
	/**
	 * 数据库连接字符串
	 */
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/userdb?characterEncoding=utf8";
	
	/**
	 * 数据库用户名
	 */
	private static final String USER_NAME = "root";
	
	/**
	 * 数据库密码
	 */
	private static final String PASSWORD = "123456";
	
	/**
	 * 数据库连接类
	 */
	private static Connection conn;
	
	/**
	 * 数据库操作类
	 */
	private static Statement stmt;
	
	
	
	// 加载驱动
	static{
		try {
			Class.forName(DRIVER_CLASS);
		} catch (Exception e) {
			System.out.println("加载驱动错误");
			System.out.println(e.getMessage());
		}
	}
	
	// 取得连接
	private static Connection getConnection(){
		
		try {
			conn = DriverManager.getConnection(DATABASE_URL, USER_NAME, PASSWORD);
		} catch (Exception e) {
			System.out.println("取得连接错误");
			System.out.println(e.getMessage());
		}
		return conn;
	}
	
	
	public void ExecuteDel(String sql){
		
		try {
			stmt = getConnection().createStatement();
		} catch (Exception e) {
			System.out.println("statement取得错误");
			System.out.println(e.getMessage());
		}
		
		try {
			int rows = stmt.executeUpdate(sql);
			if(rows >= 1){
				System.out.println("成功删除.....");
			} else {
				System.out.println("删除失败.....");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
	}
	
	public ArrayList<Analyse> getAnalyseList(String sql){
		
		ArrayList<Analyse> list = new ArrayList<Analyse>();
		
		// 取得数据库操作对象
		try {
			stmt = getConnection().createStatement();
		} catch (Exception e) {
			System.out.println("statement取得错误");
			System.out.println(e.getMessage());
			return null;
		}
		
		try {
			
			// 查询数据库对象,返回记录集(结果集)
			ResultSet rs = stmt.executeQuery(sql);
			
			// 循环记录集，查看每一行每一列的记录
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
