package com.sist_project_2;



import java.io.IOException;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist_project_2.dao.nibangDAO;
import com.sist_project_2.vo.joinVO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String email = request.getParameter("email"); 
		String name = request.getParameter("name");
		
		 
	  
		nibangDAO dao = new nibangDAO();
		joinVO vo = dao.findPass(email, name);
		 if(vo.getEmail()==null){		    
		        request.setAttribute("msg", "���̵� �̸��� ������ ���� �ʽ��ϴ�");
		        request.getRequestDispatcher("/login/find_pass.jsp").forward(request, response);
		       		      
		        return;
		    }
		
	    
	            //mail server ����
	           
	            String user = ""; //�ڽ��� ���̹� ����
	            String password = "";//�ڽ��� ���̹� �н�����
	            
	            //���� ���� �ּ�
				String to_email = vo.getEmail(); 
	            
	            //SMTP ���� ������ �����Ѵ�.
	            Properties props = new Properties();
	            props.put("mail.smtp.host", "smtp.naver.com");
	            props.put("mail.smtp.port", 587);
	            props.put("mail.smtp.auth", "true");
	          

	          
	            
	            //���� ��ȣ ������
	            StringBuffer temp =new StringBuffer();
	            Random rnd = new Random();
	            for(int i=0;i<10;i++)
	            {
	                int rIndex = rnd.nextInt(3);
	                switch (rIndex) {
	                case 0:
	                    // a-z
	                    temp.append((char) ((int) (rnd.nextInt(26)) + 97));
	                    break;
	                case 1:
	                    // A-Z
	                    temp.append((char) ((int) (rnd.nextInt(26)) + 65));
	                    break;
	                case 2:
	                    // 0-9
	                    temp.append((rnd.nextInt(10)));
	                    break;
	                }
	            }
	            String AuthenticationKey = temp.toString();
	            System.out.println(AuthenticationKey);
	            
	            Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	                protected PasswordAuthentication getPasswordAuthentication() {
	                    return new PasswordAuthentication(user,password);
	                }
	            });
	            
	            //email ����
	            try {
	                MimeMessage msg = new MimeMessage(session);
	                msg.setFrom(new InternetAddress(user));
	                msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));
	                
	                //���� ����
	                msg.setSubject("�ȳ��ϼ��� �Ϲ� ���� �����Դϴ�.");
	                //���� ����
	                msg.setText("���� ��ȣ�� :"+temp);
	                
	                Transport.send(msg);
	                System.out.println("message sent successfully...");
	                
	            }catch (Exception e) {
	                e.printStackTrace();// TODO: handle exception
	            }
	            HttpSession saveKey = request.getSession();
	            saveKey.setAttribute("AuthenticationKey", AuthenticationKey);
	           
	            //�н����� �ٲܶ� �� �ٲ��� ���ǿ� ���� id
				/* request.setAttribute("key", temp); */ 
	            request.getRequestDispatcher("/login/pass_check.jsp?email="+email+"&key="+temp).forward(request, response);
	           
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
