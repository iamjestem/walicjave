/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Session;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Marcin
 */
public class Login extends HttpServlet {

    private Connection connect = null;
    private ResultSet resultSet = null;
    private PreparedStatement statement = null;
    private boolean status;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/baza","root", "");
           

                statement = connect.prepareStatement("select * from users where Nickname=? and Password=?");
                statement.setString(1,request.getParameter("Login"));  
                statement.setString(2,request.getParameter("Password"));  
                resultSet = statement.executeQuery();
                status = resultSet.next(); ///?
                
                    if(status)
                    {
                        int id = resultSet.getInt("idUsers");
                        HttpSession session = request.getSession(true);
                        session.setAttribute("login", request.getParameter("Login"));
                        session.setAttribute("id",id);
                        connect.close();
                        response.sendRedirect("index.jsp");
                    }
                    else
                    {
                        connect.close();
                        request.setAttribute("error", "Umm... wrong password...");
                        //response.sendRedirect("index.jsp");
                    }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
