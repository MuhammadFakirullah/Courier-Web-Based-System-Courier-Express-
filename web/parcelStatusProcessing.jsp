<%-- 
    Document   : parcelStatusProcessing
    Created on : Jun 1, 2021, 7:03:19 AM
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
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                
                String myUrl= "jdbc:mysql://localhost:3306/parcel_trace";
                String uname="fakirullah";
                String pass="admin";
                Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
                
                Statement st = myConnection.createStatement();
                
                String new_idno = request.getParameter("idno");
                String myQuery = "select * from parcel where trackingNo='"+new_idno+"'";
                ResultSet rs = st.executeQuery(myQuery);
            
            }catch(Exception e){
                System.out.println(e.getMessage());
            }
        %>
    <div class="interface" style="border-radius: 3px solid #f5d142;">
            <div class="table">
                <div class="border">
                    <div class="title" style="background-color: #f5d142;">
                    <br>
                    <h1 style="text-align: center; height: 80px;">Insurance Management System</h1>
                    </div>
                    <div class="table1" align="center">
                        <table>
                            <p><strong>Welcome Muhammad Abdullah Hafiz [<a href="#" value="Sign Out">Sign Out</a>]</strong></p>
                            <p><a href="#">Manage Profile</a> &nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">Manage Vehicle</a> &nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">Insurance Quotation</a></p>
                            <!--<h1>Update Profile</h1>
                            <form>
                                <tr>
                                    <td><label>Email:</label></td>
                                    <td><input type="text" name="email" size="20"></td>
                                </tr>
                                <tr>
                                    <td><label>Password:</label></td>
                                    <td><input type="password" name="password" size="21"></td>
                                </tr>
                                <tr>
                                    <td><label>Re-Enter Password:</label></td>
                                    <td><input type="password" name="password" size="21"></td>
                                </tr>
                                <tr>
                                    <td><label>First and Last Name:</label></td>
                                    <td><input type="text" name="fullname" size="20"></td>
                                </tr>
                                <tr>
                                    <td><label>IC Number:</label></td>
                                    <td><input type="text" name="icno" size="20" placeholder="990909115555"></td>
                                </tr>-->
                            </form>
                        </table>
                            <!--<br>
                            <input type="submit" value="Update" align="center" style="width: 20%">
                            <br>
                            <br>-->
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>