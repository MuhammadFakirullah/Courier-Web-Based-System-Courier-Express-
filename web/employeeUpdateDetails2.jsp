<%-- 
    Document   : employeeUpdateDetails2
    Created on : Jul 5, 2021, 2:12:59 PM
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
            int empID = Integer.parseInt(request.getParameter("hidid"));
            
            String txtNama = request.getParameter("txtNama");
            String ic = request.getParameter("ic");
            String DateofBirth = request.getParameter("DateofBirth");
            String txtAddress = request.getParameter("txtAddress");
            String gender = request.getParameter("gender");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            String phoneNo = request.getParameter("phoneNo");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mySql://localhost:3306/adminacct";
            String uname="fakirullah";
            String pass="admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "update employee "
                     + "set empName=?, empIcno=?, empDOB=?, empAddress=?, empGender=?, empEmail=?, empPass=?, empPhoneNo=?"
                     + "where empID=?";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, txtNama);
            myPs.setString(2, ic);
            myPs.setString(3, DateofBirth);
            myPs.setString(4, txtAddress);
            myPs.setString(5, gender);
            myPs.setString(6, email);
            myPs.setString(7, pwd);
            myPs.setString(8, phoneNo);
            myPs.setInt(9, empID);
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\text/javascript\">");
                out.println("alert(\"Success Update the Record\")");
                out.println("</script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("employeeListDetails.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>

