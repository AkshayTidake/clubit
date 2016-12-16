

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome Page</title>
    </head>
    <body>
        <form method="POST" action="DbConnection">
            <table>
                
                <tr> 
                    <td>Username :</td><td><input type="text" name="uname" pattern="[a-z,A-Z,0-9]"/></td></tr>
                <tr>  <td>Password :</td><td><input type="password" name="pswd"/></td></tr>
                <tr>  <td align="center"><input type="submit" value="login"/></td>
</tr>
            </table>
        </form>
    </body>
</html>
    