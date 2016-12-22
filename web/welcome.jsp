<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info</title>
    </head>
    <body>
         <table align="center" cellpadding="5" cellspacing="5" border="0">
             <tr>
                 <td><b>username</b></td>
                 <td><b>password</b></td>
             </tr>
        <%
               
             try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/clubit","root","akshay123");
            PreparedStatement ps=con.prepareStatement("select * from login_table");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
        %>
        
    <tr>
        <td align="center"> <%=rs.getString("username")%></td>
          
             <td align="center"><%=rs.getString("password")%></td>
         
    </tr>
    <%
        }

}
        catch(Exception e){
            e.printStackTrace();
        }%>
        
        </table>
        
       
    </body>
</html>
