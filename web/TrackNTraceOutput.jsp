<%-- 
    Document   : TrackNTraceOutput
    Created on : May 17, 2021, 6:12:52 PM
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
        <title>Trace & Track Result</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel = "stylesheet" type = "text/css" href = "table.css">
	<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
    </head>
    <body>
        <%
            
            String new_idno = request.getParameter("idno");
            
        %>
        <!--Dropdown code-->
		<div id="header" style="background-color:#275962; color:white; padding: 20px; font-size: 20px;">
			<br/>
			<img border="0" src="photo/Logo.png" style="float:right" width="160px" height="110px"/>
            <h1 style="margin-bottom:0;"><center>Courier Express</center></h1>
			<br/>
        </div>
		
		<div id="menu" style="background-color:#FFFFFF; width:100%; float:right; text-align:center">
			<div class="drop">
				<ul class="drop_menu" align="center";>
				
					<li><a href="Homepage.html">HOME</a></li>
					
					<li><a href='#'>SERVICES</a>
						<ul>
							<li><a href="Shipping.html">Shipping</a></li>
							<li><a href="ShipRate.html">Shipping Rate</a></li>
							<li><a href="TrackNTrace.html">Trace & Track</a></li>
							<li><a href="SearchOutlet.html">Search Outlet</a></li>
						</ul>
					</li>
					
					<li><a href="VipAccount.html">JOIN US</a></li>
					
					<li><a href='#'>ABOUT</a>
						<ul>
							<li><a href="CompanyProfile.html">Company Profile</a></li>
							<li><a href="News.html">News</a></li>
						</ul>
					</li>
					
					<li><a href='#'>SUPPORT	</a>
						<ul>
							<li><a href="Contact%20Us.html">Contact Us</a></li>
							<li><a href="FAQ.html">FAQ</a></li>
						</ul>
					</li>
					
					<li style="float: right"><a href="#">LOG IN / SIGN UP</a>
						<ul>
							<li><a href="Login.html">Log In</a></li>
							<li><a href="SignUp.html">Sign Up</a></li>
						</ul>
					</li>
				</ul>
			</div>
			
			<!--Contents code-->
			<div id="content" align="center">
                <h2 align="center"><b>Result Trace & Track</b></h2>
				<hr/>
				<br/>
                                <h3>Tracking Number: <%=new_idno%> </h3>
				
				<form>
                    <table align="center" border="0">
                    <%
                        try{
                
                            Class.forName("com.mysql.jdbc.Driver");
                
                            String myUrl= "jdbc:mysql://localhost:3306/parcel_trace";
                            String uname="fakirullah";
                            String pass="admin";
                            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
                
                            Statement myStatement = myConnection.createStatement();
                            
                            new_idno = request.getParameter("idno");
                            String myQuery = "select * from parcel where trackingNo='"+new_idno+"'";
                            ResultSet myRs = myStatement.executeQuery(myQuery);
                            while(myRs.next()){
                    %>
                                <!--<tr>
                                    <td style="background-color: #EA5090; color:white;">
                                    <!--Date latest (dd-mm-yyyy)<%=myRs.getString("date")%>
                                    </td>
                                    <td>
                                        ---------->
                                    </td>
                                    <td>
                                    <!--Latest updated parcel<%=myRs.getString("status")%>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background-color: #EA5090; color:white;">
                                    <!--Date start (dd-mm-yyyy)<%=myRs.getString("date")%>
                                    </td>
                                    <td>
                                        ---------->
                                    </td>
                                    <td>
                                    <!--Parcel post out from Z<%=myRs.getString("status")%>
                                    </td>
                                </tr>-->
                                <table align="center" id='customers'>
                                    <tr>
                                        <th style="text-align:center;">Tracking No</th>
                                        <th style="text-align:center;">Time</th>
                                        <th style="text-align:center;">Status</th>
                                    </tr>
                                    <tr>
                                        <td style="text-align:center;"><%=new_idno%></td>
                                        <td style="text-align:center;"><%=myRs.getString("date")%></td>
                                        <td style="text-align:center;"><%=myRs.getString("status")%></td>
                                    </tr>
                                </table>
                    <%  }
                          
                        }catch(Exception e){
                            System.out.println(e.getMessage());
                        }
                    %>    
                    </table>
                </form>
				
				<br/>
				
				<div style="padding: 10px;" class="margin-top-10px">
					<a href="TrackNTrace.jsp"><button type="button">
						<span style="font-family: 'Roboto'; font-weight: bold;">Track Another Parcel</span>
					</button></a>
				</div>
				
				<br/>
				<hr/>
				<br/>
			</div>
			<br/>
		</div>
		
		<!--Footer code-->
		<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
    </body>
</html>
