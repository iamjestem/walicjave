<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("Nickname");    
    String pwd = request.getParameter("Password");
    String fname = request.getParameter("Name");
    String lname = request.getParameter("Surname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/baza",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into users(Nickname, Name, Surname, Password) values ('" + user + "','" + fname + "','" + lname + "','" + pwd + "')");
    
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("userRegistered.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>