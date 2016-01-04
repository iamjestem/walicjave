/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Session;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcin
 */
public class Stats extends HttpServlet {
    private Connection connect = null;
    private Statement statement = null;
    private ResultSet resultSet = null;
    private ResultSet resultSet1 = null;
    private PreparedStatement preparedStatement = null;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Stats</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Stats at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
        try 
        {
            
            Class.forName("com.mysql.jdbc.Driver");  
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/baza","root", "");
            
            Cookie[] cookies = null;
            cookies = request.getCookies();
            int num;
            if( cookies == null )
            {
                preparedStatement = connect.prepareStatement("update stats set visited = visited + 1");
                preparedStatement.executeUpdate();

                
                
                Cookie cookie = new Cookie("visited","visited");
                cookie.setMaxAge(60*24);
                response.addCookie(cookie);
                
                preparedStatement = connect.prepareStatement("select * from stats");   
                resultSet1 = preparedStatement.executeQuery();
                resultSet1.next();
                num = resultSet1.getInt("visited");
                request.setAttribute("visited", num);
                preparedStatement=connect.prepareStatement("Select count(idUsers) a from users");
                resultSet1 =preparedStatement.executeQuery();
                int am=100;
                request.setAttribute("a", am);
            }
            else
            {
                preparedStatement = connect.prepareStatement("select * from stats");   
                resultSet1 = preparedStatement.executeQuery();
                resultSet1.next();
                num = resultSet1.getInt("visited");
                request.setAttribute("visited", num);
                preparedStatement=connect.prepareStatement("Select count(idUsers) a from users");
                resultSet1 =preparedStatement.executeQuery();
                resultSet1.next();
                int am=resultSet1.getInt("a");
                request.setAttribute("a", am);
            }
            
            connect.close();
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            //request.setAttribute("cnt", num);
            //response.sendRedirect(null);
            //request.setAttribute("data", list);
            view.forward(request, response);
             
        }
        catch (ClassNotFoundException | SQLException ex) 
        {
            Logger.getLogger(Stats.class.getName()).log(Level.SEVERE, null, ex);
        }
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
    }// </editor-fold>

}
