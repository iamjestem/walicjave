<%-- 
    Document   : index
    Created on : 2015-12-07, 17:10:50
    Author     : Marcin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tibja - top1 strona o tym Kappa</title>
        <meta name="viewport" content="width=device-width" charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>
    <body>
        <style>
  #time {
    position: fixed;
    bottom: 0;
    right: 0;
  }
  #loginregister
  {
      position:fixed;
      right: 0;
      top: 0;
  }
</style>
        <h1 style="text-align:center">Tibja - forum dyskusyjne!!!</h1>
        <div id="loginregister"><a  href="login.java">Log in</a><small>/</small>
            <a  href="register.java">Register</a></div>
        
        <p id="time">
    Today's date: <%= (new java.util.Date()).toLocaleString()%>
    </p>
    </body>
</html>
