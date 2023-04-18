<%-- 
    Document   : parcelUpdateProcess
    Created on : Jul 7, 2021, 1:01:50 AM
    Author     : Cool Tech
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int parcelId = Integer.parseInt(request.getParameter("id"));
            String tn="", d="", st="";
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl= "jdbc:mysql://localhost:3306/parcel_trace";
            String uname="fakirullah";
            String pass="admin";
            
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String myQuery = "select * from parcel "
                        + "where id=" + parcelId;          
            
            Statement myStatement = myConnection.createStatement();
            
            ResultSet myRs = myStatement.executeQuery(myQuery);
            
            while(myRs.next()){
                tn = myRs.getString(2);
                d = myRs.getString(3);
                st = myRs.getString(4);
            }
            myConnection.close();
        %>
        <div align="center">
            <fieldset style="width: 60%"><legend><b>Update parcel</b></legend>
                <form action="parcelUpdateProcess2.jsp" method="POST">
                    <input type="hidden" name="hidid" value="<%=parcelId%>"/>
                    <table style="text-align: left;">
                         <tbody>
                             <tr>
                                 <td><br></td>
                             </tr>
                            <tr>
                                <td><label>Tracking No:</label></td>
                                <td><input type="text" name="trackingNo" value="<%=tn%>"/></td>
                            </tr>
                            <tr>
                                <td><label>Date & Time:</label></td>
                                <td><input type="text" name="date&time" id ="date" size="70"/></td>
                            </tr>
                            <tr>
                                <td><label>Status:</label></td>
                                    <td><select id="status" name="status">
                                        <option value=""><%=st%></option>
                                        <option value="[CE TRG_GATEWAY]Parcel has departed to hub TRG302">[CE TRG_GATEWAY]Parcel has departed to hub TRG302</option>
					<option value="[CE TRG_GATEWAY]Parcel has been picked up by Courier Express SJ3614">[CE TRG_GATEWAY]Parcel has been picked up by Courier Express SJ3614</option>
					<option value="[PQA31249]Parcel is in Kuala Selangor K.SEL21892">[PQA31249]Parcel is in Kuala Selangor K.SEL21892</option>
					<option value="[QYTPA8890]Parcel is in Storage Hub Pahang [PHG2198]">[QYTPA8890]Parcel is in Storage Hub Pahang [PHG2198]</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><label></label></td>
                                <td><input type="submit" value="Update"/>
                                    <input type="button" value="Cancel"
                                           onclick="window.location.href = 'searchParcel.jsp'; return false"/>
                                </td>
                            </tr>
                            
                            <tr>
                                <td><br></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </fieldset>
        </div>
    </body>
    
    <script>
	document.getElementById('date').value = Date();
    </script>
    
</html>
