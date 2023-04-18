<%-- 
    Document   : parcelDelete
    Created on : Jul 7, 2021, 1:46:08 AM
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
            int parcelId = Integer.parseInt(request.getParameter("id"));
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl= "jdbc:mysql://localhost:3306/parcel_trace";
            String uname="fakirullah";
            String pass="admin";
            
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "delete from parcel where id=?";
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setInt(1, parcelId);
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Delete the Record\")");
                out.println("<script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("searchParcel.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>
