<%-- 
    Document   : searchParcel
    Created on : Jul 6, 2021, 11:16:31 PM
    Author     : Cool Tech
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" type = "text/css" href = "table.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parcel_trace","fakirullah","admin");
                
                Statement st = con.createStatement();
                
                String trackingNo = request.getParameter("trackingNo");
                String myQuery = "select * from parcel where trackingNo='"+trackingNo+"'";
                ResultSet rs = st.executeQuery(myQuery);
                out.println("<div style='font-family: century gothic; padding=15px;'>");
                out.println("<h1>Display Parcel Tracking Data from Database</h1></div>");
                out.println("<div>");
                out.println("<table id='customers' border='1'>");
                out.println("<tr>");
                out.println("<th>ID</th>");
                out.println("<th>TRACKING NO</th>");
                out.println("<th>DATE & TIME</th>");
                out.println("<th>STATUS</th>");
                out.println("<th>ACTIONS</th>");
                out.println("</tr>");
                while(rs.next()){
                    out.println("<tr>");
                    out.println("<td>" + rs.getString(1) + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getString(3) + "</td>");
                    out.println("<td>" + rs.getString(4) + "</td>");
                    out.println("<td><a href=parcelUpdateProcess.jsp?id="
                            + rs.getString(1) + "><i class='far fa-edit' style='font-size:24px'></i></a>"
                            + "&nbsp;"+"<a href=parcelDeleteProcess.jsp?id="
                            +rs.getString(1) + " onclick=\"return confirm"+
                            "('Are you sure you want to delete?')\"><i class='far fa-trash-alt' style='font-size:24px'></i></a>"
                            +"</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
                out.println("<tr>");
                out.println("<td><input type='button' value='Back' onclick='history.back();'/></td>");
                out.println("</tr>");
                out.println("</div>");
                }          

            catch(Exception e){
                System.out.println(e.getMessage());
            }
        %>
    </body>
</html>
