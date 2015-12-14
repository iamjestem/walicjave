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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcin
 */
public class Register extends HttpServlet {

    private Connection connect = null;
    private Statement statement = null;
    private ResultSet resultSet = null;
    private PreparedStatement preparedStatement = null;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try 
        {
            RequestDispatcher rd = request.getRequestDispatcher("registerPage.jsp");
            
            Class.forName("com.mysql.jdbc.Driver");
      
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/baza","root", "");
           
            statement = connect.createStatement();
            String Nickname = request.getParameter("Nickname");
            String Password = request.getParameter("Password");
            String Name = request.getParameter("Name");
            String Surname = request.getParameter("Surname");
            
            resultSet = statement.executeQuery("select * from baza.users WHERE Nickname = '"+Nickname+"'");
            if(resultSet.first() == true)
            {
                request.setAttribute("error", "Login aledry exists, please try different one.");
                rd.forward(request, response);
            }
            else
            {
                preparedStatement = connect.prepareStatement("insert into  baza.users values (default, ?, ? , ?, ?)");

                preparedStatement.setString(1, Password);
                preparedStatement.setString(2, Nickname);
                preparedStatement.setString(3, Name);
                preparedStatement.setString(4, Surname);
                preparedStatement.executeUpdate();
                
                request.setAttribute("error", "Registration sucessfull. Welcome "+Name+" "+Surname);
                //rd.forward(request, response);
            }
        }
        catch (ClassNotFoundException | SQLException ex) 
        {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
}
