package findpassword;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import findpassword.ChangePass;

public class ServletChangePass extends HttpServlet {


	/**
	 * 张松磊201226010427 2015/5/10
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ServletChangePass() {
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

		String userName = request.getParameter("userName");
		String mobilePhone = request.getParameter("mobilePhone");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		System.out.println(userName);
		System.out.println(mobilePhone);
		System.out.println(question);
		System.out.println(answer);
		//使用DChangePass类的check方法判断用户是否存在并返回用户类型
		int userState = new ChangePass().check(userName,mobilePhone,question,answer);
		if(userState == 1) {
			session.setAttribute("user",userName);
			
			response.sendRedirect("ConfirmChangePassword.jsp");
		}else {
			response.getWriter().print("<script>alert('没有满足条件的用户，请重新尝试');window.location='ChangePassword.jsp'</script>");
			
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
