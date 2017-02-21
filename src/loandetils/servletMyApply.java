package loandetils;

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

import loanrecord.Record;

public class servletMyApply extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * уекиюз201226010427 2015/6/2
	 */
	public servletMyApply() {
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
		Record record=new Record();
		ResultSet rs=null;
		
		HttpSession session =request.getSession();
		String id = request.getParameter("id");
		
		
		try{
		conn=data.DbConnect.getConnection();
		String sql="select * from loan_record where id=?";
		pstm=conn.prepareStatement(sql);
		pstm.setString(1, id);
		
		rs=pstm.executeQuery();
		pstm.execute();
		while (rs.next()){
			record.setId(rs.getInt("id"));
			record.setUser(rs.getString("user"));
			record.setRealName(rs.getString("realName"));
			record.setLoanDate(rs.getDate("loanDate"));
			record.setSex(rs.getString("sex"));
			record.setPaperID(rs.getString("paperID"));
			record.setMarriage(rs.getString("marriage"));
			record.setMobilePhone(rs.getString("mobilePhone"));
			record.setPeopleNum(rs.getString("peopleNum"));
			record.setUserHealth(rs.getString("userHealth"));
			record.setHousehold_address(rs.getString("household_address"));
			record.setEducation(rs.getString("education"));
			record.setAddress(rs.getString("address"));
			record.setPostcode(rs.getString("postcode"));
			record.setCompanyName(rs.getString("companyName"));
			record.setCompanyLicense(rs.getString("companyLicense"));
			record.setCompanyTele(rs.getString("companyTele"));
			record.setIncome(rs.getString("income"));
			record.setDeposit(rs.getString("deposit"));
			record.setGuarantor(rs.getString("guarantor"));
			record.setGuaSex(rs.getString("guaSex"));
			record.setGuaPaperID(rs.getString("guaPaperID"));
			record.setGuaAddress(rs.getString("guaAddress"));
			record.setGuaPostcode(rs.getString("guaPostcode"));
			record.setGuaHealth(rs.getString("guaHealth"));
			record.setGuaIncome(rs.getString("guaIncome"));
			record.setGuaDeposit(rs.getString("guaDeposit"));
			record.setGuaCompany(rs.getString("guaCompany"));
			record.setGuaCompTel(rs.getString("guaCompTel"));
			record.setAccount(rs.getString("account"));
			record.setLoanLife(rs.getString("loanLife"));
			record.setPurpers(rs.getString("purpers"));
			record.setBankCard(rs.getString("bankCard"));
			record.setRate(rs.getString("rate"));
			record.setIDCardPhoto(rs.getString("IDCardPhoto"));
			record.setHomeIDPhoto(rs.getString("homeIDPhoto"));
			record.setCompanyIDPhoto(rs.getString("companyIDPhoto"));
			record.setGuaIDCardPhoto(rs.getString("guaIDCardPhoto"));
			record.setState(rs.getInt("state"));
			record.setStatus(rs.getInt("status"));
		}
		List list=new ArrayList();
		list.add(record);
		
		session.setAttribute("loaninfo", list);
		
		request.getRequestDispatcher("MyApply.jsp").forward(request, response);
		
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
