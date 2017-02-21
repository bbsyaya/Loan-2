package user;

public class Admin {
	
	/**
	 * уекиюз201226010427 2015/5/31
	 */
	
	private int id;
	private String userName;
	private String password;
	private int status;
	
	public Admin() {}
	public Admin(String userName,String password)
	{
		this.userName=userName;
		this.password=password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
