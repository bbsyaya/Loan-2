package admin.analyse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.Admin;

public class ServletAddAnalyse extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 张松磊201226010427 2015/6/2
	 */
	public ServletAddAnalyse() {
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
		HttpSession session=request.getSession();
		
		Admin admins=null;
		admins=  (Admin) session.getAttribute("user");
		//取得登录用户的用户名
		String user = admins.getUserName();
		
		String analyse=request.getParameter("analyse");
		String analyseTitle=request.getParameter("analyseTitle");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date=sdf.format(new Date());
		
		try{
			conn=data.DbConnect.getConnection();
			String sql="insert into admin_analyse(user,analyseTitle,analyse,date)"
			+"value(?,?,?,?)";
					
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, user);
			pstm.setString(2, analyseTitle);
			pstm.setString(3, analyse);
			pstm.setString(4, date);
			
			pstm.executeUpdate();
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			   out.write("<script language='javascript'>alert('保存成功');window.location='adminAnalyses'</script>");
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
