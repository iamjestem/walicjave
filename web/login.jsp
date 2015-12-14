<%-- 
    Document   : login
    Created on : 2015-12-07, 23:34:10
    Author     : Marcin
--%>

<jsp:include page="/menus/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
       <form action="Login" method="POST" id='loginf' name='loginf' onsubmit="return(validate());">
            <table border ='0'>
                <tr>
                    <td>Login:</td>
                    <td><input type ='text' id ='Login' name='Login' /></td>
                    <td><label  id ='valLogin'  class="val"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type ='text' id ='Password' name='Password' /></td>
                    <td><label  id ='valPassword'  class="val"/></td>
                </tr>
                <tr>
                    <td  colspan='1'></td>
                    <td align='right'><input  type="submit" name="submit"  value="Submit"></td>
                </tr>
                <tr>
                    <td> <p>${error}</p></td>
                </tr>
            </table>
       </form>
        <script>
                function validate()
                {
                    count = 0;
                    
                if(document.loginf.Login.value === "" || document.loginf.Login.value === null)
                {   
                   document.getElementById("valLogin").innerHTML = "Field required.";
                   count++;
                }
                else
                {
                    document.getElementById("valLogin").innerHTML = "";
                }
                //Password
                if(document.loginf.Password.value === "" || document.loginf.Login.value === null)
                {   
                   document.getElementById("valPassword").innerHTML = "Field required.";
                   count++;
                }
                else
                {
                    document.getElementById("valPassword").innerHTML = "";
                }
                
                
                if(count>0)
                    return false;
                return true;
                }
            </script>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>
