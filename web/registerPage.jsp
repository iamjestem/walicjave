<%-- 
    Document   : registerPage
    Created on : 2015-12-07, 23:34:10
    Author     : Marcin
--%>

<jsp:include page="/menus/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
       <form action='Register' method ="POST" id='regf' name='regf' onsubmit="return(validatereg());">
            
            <div class="form">
            <table border ='0'>
                <tr>
                    <td colspan='2'><h1>Registration</h1></td>
                </tr>
                <tr>
                    <td>Login:</td>
                    <td><input type ='text' id ='Nickname' name='Nickname' /></td>
                    <td><label  id ='valLogin'  class="val"/></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type ='text' id ='Password' name='Password' /></td>
                    <td><label  id ='valPassword'  class="val"/></td>
                </tr>
                
                <tr>
                    <td>Name:</td>
                    <td><input type ='text' id ='Name' name='Name' /></td>
                    <td><label  id ='valName'  class="val"/></td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td> <input type ='text' id ='Surname' name='Surname' /></td>
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
            </div>
            
           
        </form>
           <script type="text/javascript">
           function validatereg()
           {
                var count = 0;
                if(document.regf.Name.value === "" || document.regf.Name.value === null)
                {   
                   document.getElementById("valName").innerHTML = "Field required.";
                   count++;
                }
                else
                {
                     document.getElementById("valName").innerHTML = "";
                }
                if(document.regf.Surname.value === "" || document.regf.Surname.value === null)
                {   
                   document.getElementById("valSurname").innerHTML = "Field required.";
                   count++;
                }
                else
                {
                    document.getElementById("valSurname").innerHTML = "";
                }
               //Login
                if(document.regf.Nickname.value === "" || document.regf.Nickname.value === null)
                {   
                   document.getElementById("valNickname").innerHTML = "Field required.";
                   count++;
                }
                else
                {
                    document.getElementById("valNickname").innerHTML = " ";
                }
               //Password
                if(document.regf.Password.value === "" ||document.regf.Password.value === null)
                {   
                   document.getElementById("valPassword").innerHTML = "Field required.";
                   count++;
                }
                else
                {
                    document.getElementById("valPassword").innerHTML = "";
                }
               
               
               if(count>0)
               {
                   count = 0;
                   return false;
               }
                return true;
           }
        </script>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>
