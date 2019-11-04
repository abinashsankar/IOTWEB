

package Filters;
import java.io.*; 
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/Login")
public class Emptyfeild implements Filter {   
    @Override   
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)            throws IOException, ServletException {   
        HttpServletRequest req=(HttpServletRequest) request;
         HttpServletResponse res = (HttpServletResponse) response;
        String email=request.getParameter("mail");
        String pass=request.getParameter("pass");
        if(email=="" || email=="NULL" || pass=="" || pass=="NULL"){
            response.getWriter().println("Feild is Empty");
            res.sendRedirect("login.jsp");
        }
     
        else{
        
        chain.doFilter(request, response);      
        }
        }       
    @Override  
    public void init(FilterConfig filterConfig) throws ServletException {    }
    @Override  
    public void destroy() {    } }
