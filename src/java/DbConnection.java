import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class DbConnection extends HttpServlet {
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
          response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
        
        String Username=request.getParameter("uname");
        String Password=request.getParameter("pswd");
       
         if(LoginClass.validate(Username,Password)){
            RequestDispatcher r=request.getRequestDispatcher("welcome.jsp");
            r.forward(request, response);
        }
        else{
            RequestDispatcher r2=request.getRequestDispatcher("index.jsp");
            r2.include(request, response);
        } 
        
    }

   
  

}
