package perinfo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.Users;

public class ServletUserInfo extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * уекиюз201226010427 2015/5/25
	 */
	public ServletUserInfo() {
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

		this.doPost(request,response);
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
		
		Connection conn=null;
		PreparedStatement pstm=null;	
		Users user=new Users();
		ResultSet rs=null;
		
		HttpSession session =request.getSession();
		user=(Users) session.getAttribute("user");
		String name=user.getUserName();
		try{
			
		conn=data.DbConnect.getConnection();
		String sql="select * from user where userName=?";
		pstm=conn.prepareStatement(sql);

		pstm.setString(1, name);
		
		rs=pstm.executeQuery();
		pstm.execute();
		while (rs.next()){
			user.setUserName(user.getUserName());
			user.setRealName(rs.getString("realName"));
			user.setSex(rs.getString("sex"));
			user.setPaper(rs.getString("paper"));
			user.setPaperID(rs.getString("paperID"));	
			user.setMobilePhone(rs.getString("mobilePhone"));
			user.setTelePhone(rs.getString("telePhone"));
			user.setAddress(rs.getString("address"));
			user.setEmail(rs.getString("email"));
			user.setQuestion(rs.getString("question"));
		}
		
		List l=new ArrayList();
		l.add(user);
		
		session.setAttribute("userinfo", l);
		
		request.getRequestDispatcher("Individ.jsp").forward(request, response);
		
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			try{
				conn.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
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
