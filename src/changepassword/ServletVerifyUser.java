package changepassword;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import changepassword.VerifyUser;

public class ServletVerifyUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 张松磊201226010427 2015/5/29.
	 */
	public ServletVerifyUser() {
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
		HttpSession session = request.getSession();
		
		String userName=request.getParameter("userName");
		String tel=request.getParameter("mobilePhone");
		String ques=request.getParameter("question");
		String ans=request.getParameter("answer");
		
		System.out.println(userName);
		System.out.println(tel);
		System.out.println(ques);
		System.out.println(ans);
		
		int userState = new VerifyUser().check(userName,tel, ques,ans);
		
		if(userState == 1) {
			session.setAttribute("user",userName);
			response.sendRedirect("ConfirmChangePass.jsp");
		}else {
			response.getWriter().print("<script>alert('手机号码或密保问题错误，请重试');window.location='VerifyUser.jsp'</script>");
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
