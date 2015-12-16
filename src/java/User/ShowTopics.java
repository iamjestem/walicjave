/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package User;

import java.io.IOException;
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
 * @author Administrator
 */
public class ShowTopics extends HttpServlet {
    private Connection connect = null;
    private ResultSet resultSet = null;
    private PreparedStatement statement = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {         
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/baza","root", "");
            if(connect != null)
            {
                statement = connect.prepareStatement("select * from topics where idCathegory=?");
                statement.setString(1,request.getParameter("cathegory"));  
                resultSet = statement.executeQuery();
                resultSet.next(); ///?
                
                request.setAttribute("resultofmyquery", resultSet);
                request.getRequestDispatcher("cathegory.jsp").forward(request, response); 
                //response.sendRedirect("cathegory.jsp");

            }
        }
        catch (SQLException ex)
        {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
