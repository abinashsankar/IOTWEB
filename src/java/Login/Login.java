package Login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import connection.connect;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import salts.BCrypt;
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out=response.getWriter();
        escapeSpecialChars objesc = new escapeSpecialChars();
        String email=objesc.escapeSpecialChar(request.getParameter("mail"));
        String pass=objesc.escapeSpecialChar(request.getParameter("pass"));
        String original = null;
        String a="admin";
        String b="user";
        connect con=new connect();
            try {
                con.conn();
                
                out.print("abi");
                con.read("select email,password,confrimation from iotweb.register where email='"+email+"'  and confrimation=1");
                
               
                
             if(con.rs.next()){ 
             original=con.rs.getString("password");  
            if((BCrypt.checkpw(pass,original))){      
            HttpSession session =request.getSession();
            session.setAttribute("mail", email);
            session.setAttribute("pass", b);
            response.sendRedirect("studentJSP/studentindex.jsp");
            }
                                                   else{
                                             out.println("<script type=\"text/javascript\">");
                                             out.println("alert('User or password incorrect ');");
                                             out.println("location='login.jsp';");
                                             out.println("</script>");
                     }
             
        }
              else{
                    con.read("select username,password from iotweb.admin where username='"+email+"' ");
                     if(con.rs.next()){
                                       original=con.rs.getString("password");
                                       if((BCrypt.checkpw(pass,original))){
                                       HttpSession session =request.getSession();
                                       con.insert("insert into admin_login (Admin_id,logindata) values((select Admin_id from admin where username='"+con.rs.getString("username")+"'),NOW());");
                                       session.setAttribute("mail", email);
                                       session.setAttribute("pass", a);
                                       
                                       response.sendRedirect("Adminjsp/adminhome.jsp");}
                                       else{
                                             out.println("<script type=\"text/javascript\">");
                                             out.println("alert('User or password incorrect ');");
                                             out.println("location='login.jsp';");
                                             out.println("</script>");
                     }
                     }
                     else{
                           out.println("<script type=\"text/javascript\">");
                           out.println("alert('User or password incorrect');");
                           out.println("location='login.jsp';");
                           out.println("</script>");
                     }
        }
             con.conclose();
                

        
            } 
            catch (ClassNotFoundException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            } catch (InstantiationException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IllegalAccessException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            }catch (Exception ex){
                out.print("you tried something wrong");
            }
            
        
        
    } 

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
