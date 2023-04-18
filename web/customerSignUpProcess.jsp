<%-- 
    Document   : customerSignUpProcess
    Created on : Jul 5, 2021, 11:36:57 AM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname= request.getParameter("uname");
            String email = request.getParameter("email");
            String password = request.getParameter("psw");
            String rePassword = request.getParameter("psw-repeat");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/adminacct";
            String user = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,user,pass);
            
            String mySqlQuery = "insert into user " 
                    + "(username, email, password, repeat_pass) "
                    + "values(?, ?, ?, ?)";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, uname);
            myPs.setString(2, email);
            myPs.setString(3, password);
            myPs.setString(4, rePassword);
            
            if(!myPs.execute()){
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script >");
                
                RequestDispatcher rd = request.getRequestDispatcher("customerLogin.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>

