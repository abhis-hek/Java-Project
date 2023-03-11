/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author Asus
 */
@WebServlet(urlPatterns = {"/loginpage"})
public class loginpage extends HttpServlet {
    String fname ;
            String lname ;
            String email ;
            String pwd ;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected boolean processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginpage</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginpage at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            fname = request.getParameter("first_name");
            lname = request.getParameter("last_name");
            email = request.getParameter("email");
            pwd = request.getParameter("pwd");
            if(register()){
               out.println("<script>");
                    out.println("alert('Registered successfully!');");
                    out.println("location.replace('index.jsp');");
                    out.println("</script>");
            }
            
            
            String pwd2 = request.getParameter("cpwd");
            
            
    }
        return false;
    }
    
        
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }
// </editor-fold>
    
public boolean register(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");    
            System.out.println("Welcome");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cab_book","root","root");
            System.out.println("Connection Created");
            String s = "insert into register(fname,lname,email,pwd) values(?,?,?,?)";
            
            PreparedStatement ps = con.prepareStatement(s);
            ps.setString(1,fname);
            ps.setString(2,lname);
            ps.setString(3, email);
            ps.setString(4, pwd);
            ps.execute();
            con.close();
            return true;
        }
        catch(Exception e){
            System.out.println("Exception "+e);
        }
         return false;
        }
}
