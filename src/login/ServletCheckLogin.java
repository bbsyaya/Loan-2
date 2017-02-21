package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.Admin;
import user.Users;

public class ServletCheckLogin extends HttpServlet {

	/**
	 * ������ 201226010427. 2015/04/28
	 */
	private static final long serialVersionUID = 1L;
	
	public ServletCheckLogin() {
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
		
		//��ȡ����ͼƬ��֤��
		String validatecode1=(String)request.getSession().getAttribute("Rand");
		//��ȡ�û�������֤��
		String validatecode2=request.getParameter("code");
		
		//�ж���֤�������Ƿ���ȷ
		if(!validatecode1.equals(validatecode2)){
			
			response.getWriter().print("<script>alert('��֤�����!');window.location='Login.jsp'</script>");
		}
		else 
		{
			//��Login.jspҳ����ȡ���û�������û���������
			String userName = request.getParameter("userName");
			String userPassword = request.getParameter("userPassword");
			Users user = new Users(userName,userPassword);
			Admin admin = new Admin(userName,userPassword);
			int userSta = new LoginCheck().userCheck(userName, userPassword);
			if(userSta==1)
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("user",user);
				request.getRequestDispatcher("HomePage.jsp").forward(request, response); 
				//response.getWriter().print("<script>alert('��½�ɹ�!');window.location='HomePage.jsp'</script>");
			}
			else if(userSta==2)
			{
				HttpSession session=request.getSession(true);
				session.setAttribute("user",admin);
				request.getRequestDispatcher("AdminHomePage.jsp").forward(request, response); 
				
			}
			else
			{
				response.getWriter().print("<script>alert('�û������������!');window.location='Login.jsp'</script>");
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
