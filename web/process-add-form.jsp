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
            String tn = request.getParameter("trackingNo");
            String d = request.getParameter("date&time");
            String st = request.getParameter("status");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/parcel_trace";
            String uname = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "insert into parcel " 
                    + "(trackingNo, date, status) "
                    + "values(?, ?, ?)";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, tn);
            myPs.setString(2, d);
            myPs.setString(3, st);
            
            if(!myPs.execute()){
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script >");
                
                RequestDispatcher rd = request.getRequestDispatcher("process-view-form.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>
