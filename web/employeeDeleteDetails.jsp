<%-- 
    Document   : employeeDeleteDetails
    Created on : Jul 5, 2021, 4:32:05 PM
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
            int empID = Integer.parseInt(request.getParameter("empID"));
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl= "jdbc:mysql://localhost:3306/adminacct";
            String uname="fakirullah";
            String pass="admin";
            
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "delete from employee where empID=?";
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setInt(1, empID);
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Delete the Record\")");
                out.println("<script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("employeeListDetails.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>
