package admin.checked;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletDisagree extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 张松磊201226010427 2015/6/2
	 */
	public ServletDisagree() {
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
		
		String id=request.getParameter("id");
		
		Connection conn=null;
		PreparedStatement pstm=null;
		PreparedStatement pstm2=null;

		try{
		conn=data.DbConnect.getConnection();
		String sql="update admin_loan_record set state=2 where id=?";
		String sql2="update loan_record set state=2 where id=?";
		
		pstm=conn.prepareStatement(sql);
		pstm.setString(1, id);
		pstm.executeUpdate();
		
		pstm2=conn.prepareStatement(sql2);
		pstm2.setString(1, id);
		pstm2.executeUpdate();
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		   out.write("<script language='javascript'>alert('成功驳回');window.location='toCheckLoan'</script>");
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
