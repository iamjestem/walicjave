/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package User;

import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Marcin
 */
public class Profile extends HttpServlet {

    private Connection connect = null;
    private Statement statement = null;
    private ResultSet resultSet = null;
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
            out.println("<title>Servlet Profile</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Profile at " + request.getContextPath() + "</h1>");
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
            if(connect != null)
            {
                statement = connect.createStatement();
                HttpSession session = request.getSession();
                String Login = (String)session.getAttribute("login");
                Integer Id = (Integer)session.getAttribute("id");
                out.println("Hello <b>"+Login+"</b>!");
                resultSet = statement.executeQuery("select * from users where Nickname='" + Login + "' and idUsers='" + Id + "'");
                resultSet.next(); ///?
                
                    if(resultSet.first() == true)
                    {
                        String Surname = resultSet.getString("Surname");
                        String Name = resultSet.getString("Name");
                        String Password = resultSet.getString("password");
                        request.setAttribute("Name", Name);
                        request.setAttribute("Surname", Surname);
                        request.setAttribute("Login",Login);
                        request.setAttribute("Password", Password);
                         RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
                        rd.forward(request, response);
                        //response.sendRedirect("profile.jsp");
                    }
                    else
                    {
                        connect.close();
                        request.setAttribute("error", "Something went wrong :/");
                         //RequestDispatcher rd = request.getRequestDispatcher("profile.jsp");
                        //rd.forward(request, response);
                        //response.sendRedirect("profile.jsp");
                    }

            }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
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
