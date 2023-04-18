<%-- 
    Document   : EmployeeRegistrationProcess
    Created on : Jul 5, 2021, 2:29:55 PM
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
            String txtNama = request.getParameter("txtNama");
            String ic = request.getParameter("ic");
            String DOB = request.getParameter("DateofBirth");
            String address = request.getParameter("txtAddress");
            String gender = request.getParameter("gender");
            String email = request.getParameter("email");
            String password = request.getParameter("pwd");
            String phoneNo = request.getParameter("phoneNo");
     
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/adminacct";
            String uname = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "insert into employee " 
                    + "(empName, empIcno, empDOB, empAddress, empGender, empEmail, empPass, empPhoneNo) "
                    + "values(?, ?, ?, ?, ?, ?, ?, ?)";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, txtNama);
            myPs.setString(2, ic);
            myPs.setString(3, DOB);
            myPs.setString(4, address);
            myPs.setString(5, gender);
            myPs.setString(6, email);
            myPs.setString(7, password);
            myPs.setString(8, phoneNo);
            
            if(!myPs.execute()){
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script >");
                
                RequestDispatcher rd = request.getRequestDispatcher("employeeListDetails.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>
