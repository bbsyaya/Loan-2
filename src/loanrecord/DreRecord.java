package loanrecord;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import loanrecord.Record;

public class DreRecord {
	
	/**
	 * 张松磊201226010427 2015/5/20
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
	
	public ArrayList<Record> getRecordList(String sql){
		
		ArrayList<Record> list = new ArrayList<Record>();
		
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
				String realName = rs.getString("realName");
				Date loanDate  = rs.getDate("loanDate");
				String sex = rs.getString("sex");
				String paperID = rs.getString("paperID");
				String marriage = rs.getString("marriage");
				String mobilePhone = rs.getString("mobilePhone");
				String peopleNum = rs.getString("peopleNum");
				String userHealth = rs.getString("userHealth");
				String household_address = rs.getString("household_address");
				String education = rs.getString("education");
				String address = rs.getString("address");
				String postcode = rs.getString("postcode");
				String companyName = rs.getString("companyName");
				String companyLicense = rs.getString("companyLicense");
				String companyTele= rs.getString("companyTele");
				String income = rs.getString("income");
				String deposit = rs.getString("deposit");
				String guarantor = rs.getString("guarantor");
				String guaSex = rs.getString("guaSex");
				String guaPaperID = rs.getString("guaPaperID");
				String guaAddress = rs.getString("guaAddress");
				String guaPostcode = rs.getString("guaPostcode");
				String guaHealth = rs.getString("guaHealth");
				String guaIncome = rs.getString("guaIncome");
				String guaDeposit = rs.getString("guaDeposit");
				String guaCompany = rs.getString("guaCompany");
				String guaCompTel = rs.getString("guaCompTel");
				String account = rs.getString("account");
				String loanLife = rs.getString("loanLife");
				String purpers = rs.getString("purpers");
				String bankCard = rs.getString("bankCard");
				String rate = rs.getString("rate");
				String IDCardPhoto = rs.getString("IDCardPhoto");
				String homeIDPhoto = rs.getString("homeIDPhoto");
				String companyIDPhoto = rs.getString("companyIDPhoto");
				String guaIDCardPhoto = rs.getString("guaIDCardPhoto");
				int state = rs.getInt("state");
				int status = rs.getInt("status");
				Record record = new Record();
				
				record.setId(id);
				record.setUser(user);
				record.setRealName(realName);
				record.setLoanDate(loanDate);
				record.setSex(sex);
				record.setPaperID(paperID);
				record.setMarriage(marriage);
				record.setMobilePhone(mobilePhone);
				record.setPeopleNum(peopleNum);
				record.setUserHealth(userHealth);
				record.setHousehold_address(household_address);
				record.setEducation(education);
				record.setAddress(address);
				record.setPostcode(postcode);
				record.setCompanyName(companyName);
				record.setCompanyLicense(companyLicense);
				record.setCompanyTele(companyTele);
				record.setIncome(income);
				record.setDeposit(deposit);
				record.setGuarantor(guarantor);
				record.setGuaSex(guaSex);
				record.setGuaPaperID(guaPaperID);
				record.setGuaAddress(guaAddress);
				record.setGuaPostcode(guaPostcode);
				record.setGuaHealth(guaHealth);
				record.setGuaIncome(guaIncome);
				record.setGuaDeposit(guaDeposit);
				record.setGuaCompany(guaCompany);
				record.setGuaCompTel(guaCompTel);
				record.setAccount(account);
				record.setLoanLife(loanLife);
				record.setPurpers(purpers);
				record.setBankCard(bankCard);
				record.setRate(rate);
				record.setIDCardPhoto(IDCardPhoto);
				record.setHomeIDPhoto(homeIDPhoto);
				record.setCompanyIDPhoto(companyIDPhoto);
				record.setGuaIDCardPhoto(guaIDCardPhoto);
				record.setState(state);			
				record.setStatus(status);
				list.add(record);
			}
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
