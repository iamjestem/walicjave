<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("Nickname");    
    String pwd = request.getParameter("Password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/baza",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where Nickname='" + userid + "' and Password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("userLogged.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>