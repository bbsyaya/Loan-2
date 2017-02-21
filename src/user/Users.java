package user;

public class Users {
	/*
	 * 张松磊  201226010427    2015/04/27
	 */
	private int id;          //用户id
	private String userName; //用户名
	private String password; //用户密码
	private String question; //用户密保问题
	private String answer;   //用户密保问题答案
	private String realName; //用户真实姓名
	private String sex;      //用户性别
	private String paper;    //用户证件类型
	private String paperID;  //用户证件号
	private String email;    //用户电子邮箱
	private String mobilePhone; //用户手机号
	private String telePhone;  //用户电话号
	private String address;   //用户现居地址
	private int status;       //身份
	public Users() {}
	public Users(String userName,String password)
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
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPaper() {
		return paper;
	}
	public void setPaper(String paper) {
		this.paper = paper;
	}
	public String getPaperID() {
		return paperID;
	}
	public void setPaperID(String paperID) {
		this.paperID = paperID;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getTelePhone() {
		return telePhone;
	}
	public void setTelePhone(String telePhone) {
		this.telePhone = telePhone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
}
