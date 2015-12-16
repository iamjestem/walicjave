/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Marcin
 */
public class Note extends HttpServlet {
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
            out.println("<title>Servlet Note</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Note at " + request.getContextPath() + "</h1>");
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
                resultSet = statement.executeQuery("select * from adminnote");
                resultSet.next(); ///?
                
                    if(resultSet.first() == true)
                    {
                        String Note = resultSet.getString("note");
                        request.setAttribute("note", Note);
                         RequestDispatcher rd = request.getRequestDispatcher("/admin_panel/Note.jsp");
                        rd.forward(request, response);
                    }
                    else
                    {
                        connect.close();
                        request.setAttribute("error", "Something went wrong :/");
                         RequestDispatcher rd = request.getRequestDispatcher("/admin_panel/Note.jsp");
                        rd.forward(request, response);
                    }

            }
    }
        catch (SQLException ex)
        {
            Logger.getLogger(Note.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Note.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
