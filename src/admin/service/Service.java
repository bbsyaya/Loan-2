package admin.service;

import java.util.Date;

public class Service {
	private int id;
	private String content;
	private String user;
	private Date date;
	
	public Service(){}
	public Service(int id,String content,String user,Date date) {
		super();
		this.id=id;
		this.content=content;
		this.user=user;
		this.date=date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	

}
