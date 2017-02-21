package admin.analyse;

import java.util.Date;

public class Analyse {
	/*
	 * уекиюз 201226010427 2015/6/2
	 */
	private int id;
	private String user;
	private String analyseTitle;
	private String analyse;
	private Date date;
	
	
	public Analyse(){}
	public Analyse(int id,String user,String analyseTitle,String analyse,Date date) {
		super();
		this.id=id;
		this.user=user;
		this.analyseTitle=analyseTitle;
		this.analyse=analyse;
		this.date=date;
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
	public String getAnalyseTitle() {
		return analyseTitle;
	}
	public void setAnalyseTitle(String analyseTitle) {
		this.analyseTitle = analyseTitle;
	}
	public String getAnalyse() {
		return analyse;
	}
	public void setAnalyse(String analyse) {
		this.analyse = analyse;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}
