package data;

import java.sql.Connection;
import java.sql.DriverManager;
/*
 * 张松磊  201226010427    2015/04/27
 */
public class DbConnect {
	
	public static Connection getConnection() {
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/userdb?characterEncoding=utf8";
		String user = "root";
		String password = "123456";
		try {
			Class.forName(driver);
			Connection conn = DriverManager.getConnection(url,user,password);
			if(conn != null) {
				System.out.println("数据库驱动程序安装成功");
				return conn;
			}else {
				return null;
			}
		}catch(Exception e) {
			System.out.println("class not found");
			e.printStackTrace();
			return null;
		}
	}
	
}