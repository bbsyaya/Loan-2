package admin.service;

import java.io.IOException;
import java.io.PrintWriter;
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

public class ServletShowUserService extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ServletShowUserService() {
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
		
		Connection conn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		
		Service service = new Service();
		try{
			
		conn=data.DbConnect.getConnection();
		String sql="select * from service_detail where id = (select MAX(id) from service_detail)";
		pstm=conn.prepareStatement(sql);
		rs=pstm.executeQuery();
		pstm.execute();
		
		while (rs.next()){
			service.setId(rs.getInt("id"));
			service.setContent(rs.getString("content"));
			service.setUser(rs.getString("user"));
			service.setDate(rs.getDate("date"));
		
		}
		
		List list=new ArrayList();
		list.add(service);
		
		HttpSession session=request.getSession(true);
		session.setAttribute("service", list);
		
		request.getRequestDispatcher("LoginedServiceItem.jsp").forward(request, response);
		
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
