package Login;
import connection.connect;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.mail.MessagingException;
import javax.mail.internet.InternetHeaders;
import javax.mail.internet.MimeBodyPart;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String host;
    private String port;
    private String user;
    private String pass;
	
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
    
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String recipient=request.getParameter("recipient");
String subject="Change IOT Cell password";//request.getParameter("subject");
//to send a link to the recipient

String email=request.getParameter("recipient");
        String encode=Base64.getEncoder() .encodeToString(email.getBytes());
String content="Hai are you want to change password click http://localhost:8080/IOTWEB/forgotpsw.jsp?recipient="+encode;
       
    


String resultMessage="";
connect con=new connect();

        PrintWriter out=response.getWriter();
        
        
try {
    con.conn();
                
                con.read("select email,password,confrimation from iotweb.register where email='"+email+"'  and confrimation=1");
                
                
             if(con.rs.next()){
        
	Email.sendEmail(host,port,user,pass,recipient,subject,content);
	resultMessage="The email was sent successfully";
        
	request.setAttribute("Message", resultMessage);
	getServletContext().getRequestDispatcher("/Result.jsp").forward(request,response);
        }
             else{
                 out.println("<script type=\"text/javascript\">");
                                             out.println("alert('"+email+" : Email is invalid');");
                                             
                                             out.println("location='forgot.jsp';");
                                             out.println("</script>");
             }
        
}catch(Exception e) {
	e.printStackTrace();
	resultMessage="There is an error\t"+ e.getMessage();}

		
	}
}
