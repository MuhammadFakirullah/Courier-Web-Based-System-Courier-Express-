<%-- 
    Document   : process-add-form
    Created on : May 9, 2021, 3:19:23 PM
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
            String branchName= request.getParameter("txtNama");
            String address = request.getParameter("txtAddress");
            String password = request.getParameter("pwd");
            String phoneNo = request.getParameter("phoneNo");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/adminacct";
            String uname = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "insert into admin " 
                    + "(branchName, address, password, branchNo) "
                    + "values(?, ?, ?, ?)";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, branchName);
            myPs.setString(2, address);
            myPs.setString(3, password);
            myPs.setString(4, phoneNo);
            
            if(!myPs.execute()){
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script >");
                
                RequestDispatcher rd = request.getRequestDispatcher("adminLogin.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>
