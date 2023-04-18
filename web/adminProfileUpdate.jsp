<%-- 
    Document   : adminProfileUpdate
    Created on : Jul 5, 2021, 5:57:27 PM
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
            int branchID = Integer.parseInt(request.getParameter("hidid"));
            
            String branchName = request.getParameter("txtNama");
            String address = request.getParameter("txtAddress");
            String password = request.getParameter("pwd");
            String branchNo = request.getParameter("phoneNo");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mySql://localhost:3306/adminacct";
            String uname="fakirullah";
            String pass="admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "update admin "
                     + "set branchName=?, address=?, password=?, branchNo=? "
                     + "where branchID=?";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, branchName);
            myPs.setString(2, address);
            myPs.setString(3, password);
            myPs.setString(4, branchNo);
            myPs.setInt(5, branchID);
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\text/javascript\">");
                out.println("alert(\"Success Update the Record\")");
                out.println("</script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("adminDashboard.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>

