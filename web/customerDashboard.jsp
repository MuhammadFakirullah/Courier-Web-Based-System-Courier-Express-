<%-- 
    Document   : customerDashboard
    Created on : Jul 5, 2021, 11:16:27 AM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
    </head>
    <body>
        <%
            String username = (String)request.getSession().getAttribute("username");
        %>
		<style>
			body {
				font-family: Arial, Helvetica, sans-serif;
			}
			
			p.ridge {
				border-style:ridge;
				border-color:#275962;
				width:60%;
				line-height: 1.5;
				padding: 20px;
				text-align: left;
				border-bottom-left-radius: 25px;
			}
			
			.container {
				align: center;
			}
		</style>
		
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
				
					<li><a href='homepage.jsp'>HOME</a></li>
					
					<li><a href='#'>SERVICES</a>
						<ul>
							<li><a href='#'>Shipping</a></li>
							<li><a href='#'>Shipping Rate</a></li>
							<li><a href='#'>Trace & Track</a></li>
						</ul>
					</li>
					
					<li><a href='#'>JOIN US</a></li>
					
					<li><a href='#'>ABOUT</a>
						<ul>
							<li><a href='#'>Company Profile</a></li>
							<li><a href='#'>News</a></li>
						</ul>
					</li>
					
					<li><a href='#'>SUPPORT	</a>
						<ul>
							<li><a href='#'>Contact Us</a></li>
							<li><a href='#'>FAQ</a></li>
						</ul>
					</li>
                                        
                                        <li><a href='#'>ADMIN	</a>
						<ul>
							<li><a href=adminLogin.jsp>SIGN IN</a></li>
							<li><a href=adminSignUp.jsp>SIGN UP</a></li>
						</ul>
					</li>
					
					<li style="float: right" ><a href="#"><%=username%></a></li>
				</ul>
			</div>
			
			<!--Contents code-->
			<div id="content">
				<h1> <%=username%></h1>
				
				<center><h2>Welcome to the Customer Privileges</h2>
				<p class="ridge">
					<b>Customer privileges</b> are the ability to make major changes to a system, 
					typically an operating system. It can also mean large software programs such as a 
					database management system.
					<br/>
				</p></center>
				
				<div class="container" style="text-align: left; margin-left: 30%">
                                        <%
                                            Integer userid = (Integer) request.getSession().getAttribute("userid");

                                        %>
					<img src="photo/Payslip.png" height="70" width="80"/><a href='custProfile.jsp?userId=<%=userid %>'>Profile</a><br/>
					<img src="photo/Salary.png" height="70" width="80"/><a href='#'>Logout</a><br/>
                                        <img src="photo/Salary.png" height="70" width="80"/><a href='process-view-user.jsp'>Delete Account</a><br/>
				</div>
				<br/>
				<br/>
			</div>
		</div>
		
		<!--Footer code-->
		<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
	</body>
</html>
