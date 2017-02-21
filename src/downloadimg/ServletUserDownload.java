package downloadimg;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletUserDownload extends HttpServlet {

   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = new String(request.getParameter("path").getBytes("ISO-8859-1"),"gb2312");
		// ����������·��
		// ����ļ��Ƿ����
//		File obj = new File(path);
//		if (!obj.exists()) {
//			response.setContentType("text/html;charset=GBK");
//			response.getWriter().print("ָ���ļ������� ��");
//			return;
//		}
		// ��ȡ�ļ������������ÿͻ��˱���ʱָ��Ĭ���ļ���
		int index = path.lastIndexOf("\\"); // ǰ�᣺�����path�ַ����ԡ�\����ʾĿ¼�ָ���
		String fileName = path.substring(index + 1);
		
		response.reset();  
		response.setContentType("bin");     
		response.setHeader("Content-Disposition", "attachment; filename=" + java.net.URLEncoder.encode(fileName, "UTF-8"));
		//3.�������д������  
		
		  FileInputStream in = null;  
		  try{  
			  OutputStream out = response.getOutputStream();  
			  in = new FileInputStream(path);
			 
			  byte buffer[] = new byte[1024];  
			  int len = 0;
			  while((len=in.read(buffer))>0){
				  out.write(buffer,0,len);
			  }
		  }finally{  
			  if(in!=null){  
				  in.close();     //�ر���  
			  }  
		  } 
		
	}

}