package onest.dev;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Store;
import javax.mail.URLName;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReciveMailServlet
 */
public class ReciveMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReciveMailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Properties props = System.getProperties();
		props.put("mail.pop.host", "pop.126.com");
		//创建Session
		Session session = Session.getDefaultInstance(props, null);
		//设置pop地址、帐户名和密码
		URLName urln = new URLName("pop3", "pop.126.com", 110, null, "slp6819094", "123919");
		//使用Session创建一个邮局store并连接
		Store store;
		try {
			store = session.getStore(urln);
			store.connect();
			//从邮局取得一个文件夹并打开，获得消息
			Folder folder = store.getFolder("INBOX");
			folder.open(Folder.READ_ONLY);
			Message message[] = folder.getMessages();
			int count = message.length;
			response.getWriter().write("count:"+count);
		} catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 


	}

}
