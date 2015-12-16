<%-- 
    Document   : sendmessage
    Created on : 2015-12-16, 02:53:31
    Author     : Marcin
--%>
<jsp:include page="/menus/header.jsp"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Prywatna wiadomość</h2>
        <form action='SendMessage' method ="POST" id='priv' name='priv' onsubmit="return(validatereg());">
            
            <table border ='0'>
                <tr>
                    <td>Nickname:</td>
                    <td><input type ='text' id ='Nickname' name='Nickname' /></td>
                    <td><label  id ='valNickname'  class="val"/></td>
                </tr>
                <tr>
                    <td>Message:</td>
                    <td><input type ='text' id ='message' name='message' /></td>
                    <td><label  id ='valMessage'  class="val"/></td>
                </tr>
                <tr>
                    <td colspan='1'></td>
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
                    
                if(document.priv.Nickname.value === "" || document.priv.Nickname.value === null)
                {   
                   document.getElementById("valNickname").innerHTML = "Field required.";
                   count++;
                }
                else
                {
                    document.getElementById("valNickname").innerHTML = "";
                }
                //Password
                if(document.priv.Message.value === "" || document.priv.Message.value === null)
                {   
                   document.getElementById("valMessage").innerHTML = "Field required.";
                   count++;
                }
                else
                {
                    document.getElementById("valMessage").innerHTML = "";
                }
                
                
                if(count>0) return false;
                
                return true;
                }
            </script>
    </body>
</html>
<jsp:include page="/menus/footer.jsp"/>