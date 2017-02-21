package register;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.DbConnect;
import user.Users;

public class ServletRegister extends HttpServlet {

	/*
	 * 张松磊  201226010427    2015/04/27
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ServletRegister() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=gb2312");
		
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		String question=request.getParameter("question");
		String answer=request.getParameter("answer");
		
		String realName=request.getParameter("realName");
		String sex=request.getParameter("sex");
		String paper=request.getParameter("paper");
		String paperID=request.getParameter("paperID");
		String email=request.getParameter("email");
		String mobilePhone=request.getParameter("mobilePhone");
		String telePhone=request.getParameter("telePhone");
		String address=request.getParameter("address");
		
		
		//判断信息是否符合要求
		Connection conn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try{
		conn=DbConnect.getConnection();
		String s="select * from user where userName=?";
		pstm=conn.prepareStatement(s);
		pstm.setString(1, userName);
		rs=pstm.executeQuery();
		if(rs.next()){
			response.setHeader("content-type","text/html;charset=UTF-8");
			response.getWriter().print("<script>alert('该用户名已被注册，请换一个重试！');window.location='Register.jsp'</script>");

		}else{
			Users user=new Users();
			user.setUserName(userName);
			user.setPassword(password);
			user.setQuestion(question);
			user.setAnswer(answer);
			user.setRealName(realName);
			user.setSex(sex);
			user.setPaper(paper);
			user.setPaperID(paperID);			
			user.setEmail(email);
			user.setMobilePhone(mobilePhone);
			user.setTelePhone(telePhone);
			user.setAddress(address);
			adduser(user);
			HttpSession session =request.getSession();
			session.setAttribute("user", user);
		
			response.getWriter().print("<script>alert('注册成功，请登录！');window.location='Login.jsp'</script>");
	}
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				conn.close();
			}catch(Exception e) {}
		}
		
		
	}
	public void adduser(Users user){
		Connection conn=null;
		PreparedStatement pstm=null;
		
		String sql;
		try{
		conn=DbConnect.getConnection();
		sql="insert into user(userName,password,question,answer,realName,sex,paper,paperID,email,mobilePhone,telePhone,address)"
			+"value(?,?,?,?,?,?,?,?,?,?,?,?)";
		pstm=conn.prepareStatement(sql);
		pstm.setString(1,user.getUserName());
		pstm.setString(2,user.getPassword());
		pstm.setString(3,user.getQuestion());
		pstm.setString(4,user.getAnswer());
		pstm.setString(5,user.getRealName());
		pstm.setString(6,user.getSex());
		pstm.setString(7,user.getPaper());
		pstm.setString(8,user.getPaperID());
		pstm.setString(9,user.getEmail());
		pstm.setString(10,user.getMobilePhone());
		pstm.setString(11,user.getTelePhone());
		pstm.setString(12,user.getAddress());
		pstm.executeUpdate();
	
		}catch(SQLException e){
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			}catch(Exception e) {}
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
