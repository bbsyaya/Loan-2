package loanrecord;

import java.util.Date;

public class Record {
	/*
	 * 张松磊201226010427 2015/6/1
	 */
	int id;          //贷款记录id
	String user;        //贷款用户
	String realName;    //贷款用户姓名
	Date loanDate;      //贷款日期 
	String sex;         //贷款者性别
	String paperID;     //贷款者证件号
	String marriage;    //贷款者婚姻状况
	String mobilePhone; //贷款者手机号
	String peopleNum;   //贷款者家庭人数
	String userHealth;  //贷款者健康状况
	String household_address;  //贷款者户籍所在地
	String education;    //贷款者学历
	String address;      //贷款者现居地
	String postcode;     //贷款者现居地邮编
	String companyName;  //贷款者公司
	String companyLicense; //贷款者公司营业执照
	String companyTele;    //贷款者营业电话
	String income;         //贷款者月均收入
	String deposit;        //贷款者存款
	String guarantor;   //担保人
	String guaSex;      //担保人性别
	String guaPaperID;  //担保人证件号
	String guaAddress;  //担保人现居地址
	String guaPostcode; //担保人现居地址邮编
	String guaHealth;   //担保人健康状况
	String guaIncome;   //担保人月均收入
	String guaDeposit;  //担保人存款
	String guaCompany;  //担保人工作单位
	String guaCompTel;  //担保人工作单位电话
	String account;     //贷款金额
	String loanLife;    //贷款期限
	String purpers;    	//贷款用途
	String bankCard;    //贷款账号
	String rate;        //贷款利率
	String IDCardPhoto; //贷款人照片
	String homeIDPhoto; //户口本照片
	String companyIDPhoto; //公司营业执照照片
	String guaIDCardPhoto; //担保人身份证照片
	int state;          //审贷状态
	int status;         //用户身份 


	public Record() {}

	public Record(int id,String user,String realName,Date loanDate,String sex,String paperID,
			String marriage,String mobilePhone,String peopleNum,String userHealth,String household_address,
			String education,String address,String postcode,String companyName,String companyLicense, 
			String companyTele,String income,String deposit,String guarantor,String guaSex,String guaPaperID,String guaAddress,
			String guaPostcode,String guaHealth,String guaIncome,String guaDeposit,String guaCompany,
			String guaCompTel,String account, String loanLife,String purpers, String bankCard,String rate,String IDCardPhoto,
			String homeIDPhoto,String companyIDPhoto,String guaIDCardPhoto, int state, int status) {
		super();
		this.id = id;
		this.user = user;
		this.realName = realName;
		this.loanDate = loanDate;
		this.sex = sex;
		this.paperID = paperID;
		this.marriage = marriage;
		this.mobilePhone = mobilePhone;
		this.peopleNum = peopleNum;
		this.userHealth = userHealth;
		this.household_address = household_address;
		this.education = education;
		this.address = address;
		this.postcode = postcode;
		this.companyName = companyName;
		this.companyLicense = companyLicense;
		this.companyTele = companyTele;
		this.income = income;
		this.deposit = deposit;
		this.guarantor = guarantor;		
		this.guaSex = guaSex;
		this.guaPaperID = guaPaperID;
		this.guaAddress = guaAddress;
		this.guaPostcode = guaPostcode;
		this.guaHealth = guaHealth;
		this.guaIncome = guaIncome;
		this.guaDeposit = guaDeposit;
		this.guaCompany = guaCompany;
		this.guaCompTel = guaCompTel;
		this.account = account;
		this.loanLife = loanLife;
		this.purpers = purpers;
		this.bankCard = bankCard;
		this.rate = rate;
		this.IDCardPhoto = IDCardPhoto;
		this.homeIDPhoto = homeIDPhoto;
		this.companyIDPhoto = companyIDPhoto;
		this.guaIDCardPhoto = guaIDCardPhoto;
		this.state = state;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public Date getLoanDate() {
		return loanDate;
	}

	public void setLoanDate(Date loanDate) {
		this.loanDate = loanDate;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPaperID() {
		return paperID;
	}

	public void setPaperID(String paperID) {
		this.paperID = paperID;
	}

	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getPeopleNum() {
		return peopleNum;
	}

	public void setPeopleNum(String peopleNum) {
		this.peopleNum = peopleNum;
	}

	public String getUserHealth() {
		return userHealth;
	}

	public void setUserHealth(String userHealth) {
		this.userHealth = userHealth;
	}

	public String getHousehold_address() {
		return household_address;
	}

	public void setHousehold_address(String household_address) {
		this.household_address = household_address;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCompanyLicense() {
		return companyLicense;
	}

	public void setCompanyLicense(String companyLicense) {
		this.companyLicense = companyLicense;
	}

	public String getCompanyTele() {
		return companyTele;
	}

	public void setCompanyTele(String companyTele) {
		this.companyTele = companyTele;
	}

	public String getIncome() {
		return income;
	}

	public void setIncome(String income) {
		this.income = income;
	}

	public String getDeposit() {
		return deposit;
	}

	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}

	public String getGuarantor() {
		return guarantor;
	}

	public void setGuarantor(String guarantor) {
		this.guarantor = guarantor;
	}

	public String getGuaSex() {
		return guaSex;
	}

	public void setGuaSex(String guaSex) {
		this.guaSex = guaSex;
	}

	public String getGuaPaperID() {
		return guaPaperID;
	}

	public void setGuaPaperID(String guaPaperID) {
		this.guaPaperID = guaPaperID;
	}

	public String getGuaAddress() {
		return guaAddress;
	}

	public void setGuaAddress(String guaAddress) {
		this.guaAddress = guaAddress;
	}

	public String getGuaPostcode() {
		return guaPostcode;
	}

	public void setGuaPostcode(String guaPostcode) {
		this.guaPostcode = guaPostcode;
	}

	public String getGuaHealth() {
		return guaHealth;
	}

	public void setGuaHealth(String guaHealth) {
		this.guaHealth = guaHealth;
	}

	public String getGuaIncome() {
		return guaIncome;
	}

	public void setGuaIncome(String guaIncome) {
		this.guaIncome = guaIncome;
	}

	public String getGuaDeposit() {
		return guaDeposit;
	}

	public void setGuaDeposit(String guaDeposit) {
		this.guaDeposit = guaDeposit;
	}

	public String getGuaCompany() {
		return guaCompany;
	}

	public void setGuaCompany(String guaCompany) {
		this.guaCompany = guaCompany;
	}

	public String getGuaCompTel() {
		return guaCompTel;
	}

	public void setGuaCompTel(String guaCompTel) {
		this.guaCompTel = guaCompTel;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getLoanLife() {
		return loanLife;
	}

	public void setLoanLife(String loanLife) {
		this.loanLife = loanLife;
	}

	public String getPurpers() {
		return purpers;
	}

	public void setPurpers(String purpers) {
		this.purpers = purpers;
	}

	public String getBankCard() {
		return bankCard;
	}

	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	

	public String getIDCardPhoto() {
		return IDCardPhoto;
	}

	public void setIDCardPhoto(String iDCardPhoto) {
		IDCardPhoto = iDCardPhoto;
	}

	public String getHomeIDPhoto() {
		return homeIDPhoto;
	}

	public void setHomeIDPhoto(String homeIDPhoto) {
		this.homeIDPhoto = homeIDPhoto;
	}

	public String getCompanyIDPhoto() {
		return companyIDPhoto;
	}

	public void setCompanyIDPhoto(String companyIDPhoto) {
		this.companyIDPhoto = companyIDPhoto;
	}

	public String getGuaIDCardPhoto() {
		return guaIDCardPhoto;
	}

	public void setGuaIDCardPhoto(String guaIDCardPhoto) {
		this.guaIDCardPhoto = guaIDCardPhoto;
	}
}
