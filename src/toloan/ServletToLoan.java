package toloan;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;

import user.Users;

public class ServletToLoan extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 张松磊201226010427 2015/6/1
	 */
	public ServletToLoan() {
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
	private static String intToString(int num)
	{
		if(num < 10){
			return "0" + num;
		}else{
			return new String("" + num);
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=gb2312");
		
		Connection conn=null;
		PreparedStatement pstm=null;
		PreparedStatement pstm2=null;
		HttpSession session=request.getSession();
		
		Users users=null;
		users=  (Users) session.getAttribute("user");
		//取得登录用户的用户名
		String user = users.getUserName();
		/////////////////////////////////////
		ServletConfig config = this.getServletConfig();
		SmartUpload mySmartUpload = new SmartUpload();//上传图片的工具类
		mySmartUpload.initialize(config, request, response);// 初始化
		try {	
			mySmartUpload.upload();// 上传
            com.jspsmart.upload.File f0 = mySmartUpload.getFiles().getFile(0);//因为只一次只上传一个图片，所以就getFile(0)，如果多次还要迭代遍历
            com.jspsmart.upload.File f1 = mySmartUpload.getFiles().getFile(1);
            com.jspsmart.upload.File f2 = mySmartUpload.getFiles().getFile(2);
            com.jspsmart.upload.File f3 = mySmartUpload.getFiles().getFile(3);
            String img0 = f0.getFileName();//得到图片的名字
            String img1 = f1.getFileName();//得到图片的名字
            String img2 = f2.getFileName();//得到图片的名字
            String img3 = f3.getFileName();//得到图片的名字
        	
            Calendar cal=Calendar.getInstance(); //处理时间的一个类
        	int year = cal.get(Calendar.YEAR);// 得到当前年
        	int month = cal.get(Calendar.MONTH )+1;//月
        	int day = cal.get(Calendar.DAY_OF_MONTH);//日
        	int hour = cal.get(Calendar.HOUR_OF_DAY);//小时
            int min = cal.get(Calendar.MINUTE);
            
            String ymdh = "";
            ymdh  = ymdh + intToString(year);
            ymdh = ymdh + intToString(month);
            ymdh = ymdh + intToString(day);
            ymdh = ymdh + intToString(hour);
            ymdh = ymdh + intToString(min);
            
            String path = request.getSession().getServletContext().getRealPath("/") + "uploadimg"+File.separator + ymdh;
            //System.out.println(path);
            File file = new File(path);
        	if(!file.exists()){//如果不存在这个路径
        		file.mkdirs();//就创建
        	}
        	String imagePath0 = path+File.separator +img0;
        	String imagePath1 = path+File.separator +img1;
        	String imagePath2 = path+File.separator +img2;
        	String imagePath3 = path+File.separator +img3;
        	//System.out.println(imagePath0);
            f0.saveAs(imagePath0);// 保存图片到这个目录下
            f1.saveAs(imagePath1);// 保存图片到这个目录下
            f2.saveAs(imagePath2);// 保存图片到这个目录下
            f3.saveAs(imagePath3);// 保存图片到这个目录下
            
            //获取文本信息
          //String userName = mySmartUpload.getRequest().getParameter("name");
            //String age = mySmartUpload.getRequest().getParameter("age");
            String realName=mySmartUpload.getRequest().getParameter("realName");
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    		String loanDate=sdf.format(new Date());
    		System.out.println("当前日期："+loanDate);
    		
    		String sex=mySmartUpload.getRequest().getParameter("sex");
    		String paperID=mySmartUpload.getRequest().getParameter("paperID");
    		String marriage=mySmartUpload.getRequest().getParameter("marriage");
    		String mobilePhone=mySmartUpload.getRequest().getParameter("mobilePhone");
    		String peopleNum=mySmartUpload.getRequest().getParameter("peopleNum");
    		String userHealth=mySmartUpload.getRequest().getParameter("userHealth");
    		String household_address=mySmartUpload.getRequest().getParameter("household_address");
    		String education=mySmartUpload.getRequest().getParameter("education");
    		String address=mySmartUpload.getRequest().getParameter("address");
    		String postcode=mySmartUpload.getRequest().getParameter("postcode");
    		String companyName=mySmartUpload.getRequest().getParameter("companyName");
    		String companyLicense=mySmartUpload.getRequest().getParameter("companyLicense");
    		String companyTele=mySmartUpload.getRequest().getParameter("companyTele");
    		String income=mySmartUpload.getRequest().getParameter("income");
    		String deposit=mySmartUpload.getRequest().getParameter("deposit");
    		String guarantor=mySmartUpload.getRequest().getParameter("guarantor");
    		String guaSex=mySmartUpload.getRequest().getParameter("guaSex");
    		String guaPaperID=mySmartUpload.getRequest().getParameter("guaPaperID");
    		String guaAddress=mySmartUpload.getRequest().getParameter("guaAddress");
    		String guaPostcode=mySmartUpload.getRequest().getParameter("guaPostcode");
    		String guaHealth=mySmartUpload.getRequest().getParameter("guaHealth");
    		String guaIncome=mySmartUpload.getRequest().getParameter("guaIncome");
    		String guaDeposit=mySmartUpload.getRequest().getParameter("guaDeposit");
    		String guaCompany=mySmartUpload.getRequest().getParameter("guaCompany");
    		String guaCompTel=mySmartUpload.getRequest().getParameter("guaCompTel");
    		String account=mySmartUpload.getRequest().getParameter("account");
    		String loanLife=mySmartUpload.getRequest().getParameter("loanLife");
    		String purpers=mySmartUpload.getRequest().getParameter("purpers");
    		String bankCard=mySmartUpload.getRequest().getParameter("bankCard");
    		String rate="3.5%";
    		String IDCardPhoto=imagePath0;
    		String homeIDPhoto=imagePath1;
    		String companyIDPhoto=imagePath2;
    		String guaIDCardPhoto=imagePath3;
    		int state = 0;	
    		
    		try{
    			conn=data.DbConnect.getConnection();
    			String sql="insert into loan_record(user,realName,loanDate,sex,paperID,marriage,mobilePhone,peopleNum,userHealth," +
    					"household_address,education,address,postcode,companyName,companyLicense,companyTele,income,deposit,guarantor," +
    					"guaSex,guaPaperID,guaAddress,guaPostcode,guaHealth,guaIncome,guaDeposit,guaCompany,guaCompTel,account," +
    					"loanLife,purpers,bankCard,rate,IDCardPhoto,homeIDPhoto,companyIDPhoto,guaIDCardPhoto,state)"
    			+"value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    			String sql2="insert into admin_loan_record(user,realName,loanDate,sex,paperID,marriage,mobilePhone,peopleNum,userHealth," +
    					"household_address,education,address,postcode,companyName,companyLicense,companyTele,income,deposit,guarantor," +
    					"guaSex,guaPaperID,guaAddress,guaPostcode,guaHealth,guaIncome,guaDeposit,guaCompany,guaCompTel,account," +
    					"loanLife,purpers,bankCard,rate,IDCardPhoto,homeIDPhoto,companyIDPhoto,guaIDCardPhoto,state)"
    			+"value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    			
    			pstm=conn.prepareStatement(sql);
    			pstm.setString(1, user);
    			pstm.setString(2, realName);
    			pstm.setString(3, loanDate);
    			pstm.setString(4, sex);
    			pstm.setString(5, paperID);
    			pstm.setString(6, marriage);
    			pstm.setString(7, mobilePhone);
    			pstm.setString(8, peopleNum);
    			pstm.setString(9, userHealth);
    			pstm.setString(10, household_address);
    			pstm.setString(11, education);
    			pstm.setString(12, address);
    			pstm.setString(13, postcode);
    			pstm.setString(14, companyName);
    			pstm.setString(15, companyLicense);
    			pstm.setString(16, companyTele);
    			pstm.setString(17, income);
    			pstm.setString(18, deposit);
    			pstm.setString(19, guarantor);
    			pstm.setString(20, guaSex);
    			pstm.setString(21, guaPaperID);
    			pstm.setString(22, guaAddress);
    			pstm.setString(23, guaPostcode);
    			pstm.setString(24, guaHealth);
    			pstm.setString(25, guaIncome);
    			pstm.setString(26, guaDeposit);
    			pstm.setString(27, guaCompany);
    			pstm.setString(28, guaCompTel);
    			pstm.setString(29, account);
    			pstm.setString(30, loanLife);
    			pstm.setString(31, purpers);
    			pstm.setString(32, bankCard);
    			pstm.setString(33, rate);
    			pstm.setString(34, IDCardPhoto);
    			pstm.setString(35, homeIDPhoto);
    			pstm.setString(36, companyIDPhoto);
    			pstm.setString(37, guaIDCardPhoto);
    			pstm.setInt(38, state);
    			
    			pstm.executeUpdate();
    			
    			pstm2=conn.prepareStatement(sql2);
    			pstm2.setString(1, user);
    			pstm2.setString(2, realName);
    			pstm2.setString(3, loanDate);
    			pstm2.setString(4, sex);
    			pstm2.setString(5, paperID);
    			pstm2.setString(6, marriage);
    			pstm2.setString(7, mobilePhone);
    			pstm2.setString(8, peopleNum);
    			pstm2.setString(9, userHealth);
    			pstm2.setString(10, household_address);
    			pstm2.setString(11, education);
    			pstm2.setString(12, address);
    			pstm2.setString(13, postcode);
    			pstm2.setString(14, companyName);
    			pstm2.setString(15, companyLicense);
    			pstm2.setString(16, companyTele);
    			pstm2.setString(17, income);
    			pstm2.setString(18, deposit);
    			pstm2.setString(19, guarantor);
    			pstm2.setString(20, guaSex);
    			pstm2.setString(21, guaPaperID);
    			pstm2.setString(22, guaAddress);
    			pstm2.setString(23, guaPostcode);
    			pstm2.setString(24, guaHealth);
    			pstm2.setString(25, guaIncome);
    			pstm2.setString(26, guaDeposit);
    			pstm2.setString(27, guaCompany);
    			pstm2.setString(28, guaCompTel);
    			pstm2.setString(29, account);
    			pstm2.setString(30, loanLife);
    			pstm2.setString(31, purpers);
    			pstm2.setString(32, bankCard);
    			pstm2.setString(33, rate);
    			pstm2.setString(34, IDCardPhoto);
    			pstm2.setString(35, homeIDPhoto);
    			pstm2.setString(36, companyIDPhoto);
    			pstm2.setString(37, guaIDCardPhoto);
    			pstm2.setInt(38, state);
    			
    			pstm2.executeUpdate();
    			
    			response.setContentType("text/html");
    			PrintWriter out=response.getWriter();
    			   out.write("<script language='javascript'>alert('提交成功');window.location='loanRecord'</script>");
    			}catch(SQLException e){
    				
    				e.printStackTrace();
    			}finally{
    				try{
    					conn.close();
    				}catch(SQLException e){
    					e.printStackTrace();
    				}
    			}

		}catch(SmartUploadException e) {
			e.printStackTrace();
		}
		
		
		///////////////////////////////////
		
		
		
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
