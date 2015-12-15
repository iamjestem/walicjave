<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%--
    Document   : index
    Author     : Marcin
--%>
<jsp:include page="/menus/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        
    <head>
    </head>
    <body>
        <h2>Panel użytkownika</h2>
        <div class="form">
       <form action='Profile' method ="POST" id='regf' name='regf' >
            <table border ='0'>
                <tr>
                    
                </tr>
                <tr>
                    <td>Login:</td>
                    <td><input type ='text' id ='Nickname' name='Nickname' value ="${Login}"/></td>
                    <td><label  id ='valLogin'  class="val"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type ='password' id ='Password' name='Password' value=${Password}</td>
                    <td><label  id ='valPassword'  class="val"/></td>
                </tr>
                
                <tr>
                    <td>Name:</td>
                    <td><input type ='text' id ='Name' name='Name' value="${Name}" /></td>
                    <td><label  id ='valName'  class="val"/></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td> <input type ='text' id ='Surname' name='Surname' value=${Surname} /></td>
                    <td><label  id ='valSurname'  class="val"/></td>
                </tr>
                <tr>
                    <td colspan='1'></td>
                    <td align='right'><input  type="submit" name="submit"  value="Submit"></td>
                </tr>
                <tr>
                    <td> <p>${error}</p></td>
                </tr>
            </table>
           </form></form></div>
    </body>


    

</html>
<jsp:include page="/menus/footer.jsp"/>