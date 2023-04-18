<%-- 
    Document   : parcelUpdateProcess2
    Created on : Jul 7, 2021, 1:07:50 AM
    Author     : Cool Tech
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int parcelId = Integer.parseInt(request.getParameter("hidid"));
            String tn = request.getParameter("trackingNo");
            String d = request.getParameter("date&time");
            String st = request.getParameter("status");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mySql://localhost:3306/parcel_trace";
            String uname="fakirullah";
            String pass="admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "update parcel "
                     + "set trackingNo=?, date=? , status=? "
                     + "where id=?";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, tn);
            myPs.setString(2, d);
            myPs.setString(3, st);
            myPs.setInt(4, parcelId);
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\text/javascript\">");
                out.println("alert(\"Success Update the Record\")");
                out.println("</script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("searchParcel.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>
