<%-- 
    Document   : process-update-form
    Created on : May 9, 2021, 11:03:24 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courier Express</title>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
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
        
        <!--Dropdown code-->
		<div id="header" style="background-color:#275962; color:white; padding: 20px; font-size: 20px;">
			<br/>
			<img border="0" src="photo/Logo.png" style="float:right" width="160px" height="110px"/>
            <h1 style="margin-bottom:0;"><center>Courier Express</center></h1>
			<br/>
        </div>
		
		<div id="menu" style="background-color:#FFFFFF; height:100%; width:100%; float:right; text-align:center">
			<div class="drop">
				<ul class="drop_menu" align="center";>
				
					<li><a href="file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/Homepage.html">HOME</a></li>
					
					<li><a href='#'>SERVICES</a>
						<ul>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/Shipping.html'>Shipping</a></li>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/ShipRate.html'>Shipping Rate</a></li>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/TrackNTrace.html'>Trace & Track</a></li>
						</ul>
					</li>
					
					<li><a href='#'>JOIN US</a></li>
					
					<li><a href='#'>ABOUT</a>
						<ul>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/CompanyProfile.html'>Company Profile</a></li>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/News.html'>News</a></li>
						</ul>
					</li>
					
					<li><a href='#'>SUPPORT	</a>
						<ul>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/Contact%20Us.html'>Contact Us</a></li>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/FAQ.html'>FAQ</a></li>
						</ul>
					</li>
					
					<li style="float: right"><a href="#">LOG IN / SIGN UP</a>
						<ul>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/Login.html'>Log In</a></li>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/SignUp.html'>Sign Up</a></li>
						</ul>
					</li>
				</ul>
			</div>
        <div>
            <h2>Courier Express</h2>
        </div>
        <div align="center">
            <fieldset style="width: 60%"><legend><b>Update parcel</b></legend>
                <form action="process-update-form2.jsp" method="POST">
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
                                           onclick="window.location.href = 'process-view-form.jsp'; return false"/>
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
    <br><br>
    <!--Footer code-->
			<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
    
    <script>
	document.getElementById('date').value = Date();
    </script>
    
</html>
