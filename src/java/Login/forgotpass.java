/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Login;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import connection.connect;



/**
 *
 * @author abinash
 */
@WebServlet(name = "forgotpass", urlPatterns = {"/forgotpass"})
public class forgotpass extends HttpServlet {

   
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
        String email=request.getParameter("recipient");
        connect con=new connect();
        try {
                con.conn();
                
                con.read("select email,password,confrimation from iotweb.register where email='"+email+"'  and confrimation=1");
                
                
             if(con.rs.next()){
                 
                 out.println("<script type=\"text/javascript\">");
                                             out.println("alert('Hai "+email+"');");
                                             out.println("location='forgot.jsp';");
                                             out.println("</script>");
                 
             }
             else{
                 out.println("<script type=\"text/javascript\">");
                                             out.println("alert(' Email is invalid "+email+"');");
                                             out.println("location='forgot.jsp';");
                                             out.println("</script>");
             }
        }
        catch(Exception e){
            out.print(e);
        }
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
