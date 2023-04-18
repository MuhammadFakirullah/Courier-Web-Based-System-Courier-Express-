<%-- 
    Document   : adminProfile
    Created on : Jul 5, 2021, 5:56:53 PM
    Author     : Cool Tech
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>View Employee Details</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
	</head>
	
	<body>
            <%
                String branchName = (String)request.getSession().getAttribute("username");
                
                int branchID = Integer.parseInt(request.getParameter("branchID"));
                String txtNama="", txtAddress="", pwd="", phoneNo="";

                Class.forName("com.mysql.jdbc.Driver");

                String myUrl= "jdbc:mysql://localhost:3306/adminacct";
                String uname="fakirullah";
                String pass="admin";

                Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);

                String myQuery = "select * from admin "
                            + "where branchID=" + branchID;    

                Statement myStatement = myConnection.createStatement();

                ResultSet myRs = myStatement.executeQuery(myQuery);

                while(myRs.next()){
                    txtNama = myRs.getString(2);
                    txtAddress = myRs.getString(3);
                    pwd = myRs.getString(4);
                    phoneNo = myRs.getString(5);
                }
                myConnection.close();
            %>
            
		<style>
			body {
				font-family: Arial, Helvetica, sans-serif;
			}

			button {
				background-color: #4CAF50;
				color: white;
				padding: 14px 20px;
				margin: 0;
				border: none;
				cursor: pointer;
			}

			button:hover {
				opacity: 0.8;
			}

			/* Float button and add an equal width */
			.backbtn {
				float: center;
				width: 30%;
			}

			.container {
				margin: 15px 0 10px 0;
				padding: 10px;
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
				
					<li><a href='default.asp'>HOME</a></li>
					
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
					
					<li style="float: right"><a href="#"><%=branchName%></a></li>
				</ul>
			</div>
			
			<!--Contents code-->
			<div class="container" align="center">
				<h2 align="center"><b>Administrator Details</b></h2>
                <form action="adminProfileUpdate.jsp" method="POST">
                    <input type="hidden" name="hidid" value="<%=branchID%>"/>
                    <table align="center" border="0">
						<tr>
                            <td style="background-color: #EA5090; color:white;">
                                Admin ID:
                            </td>
                            <td>
                                <input type="text" name="txtID" value="<%=branchID%>" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Branch Name:
                            </td>
                            <td>
                                <input type="text" name="txtNama" value="<%=txtNama%>">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Address:
                            </td>
                            <td>
                                <input type="text" name="txtAddress" value="<%=txtAddress%>">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Password:
                            </td>
                            <td>
                                <input type="text" name="pwd" value="<%=pwd%>">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Phone No: 
                            </td>
                            <td>
                                <input type="text" name="phoneNo" value="<%=phoneNo%>">
                            </td>
                        </tr>
                        <tr>
                                <td><label></label></td>
                                <td><input type="submit" value="Update"/>
                                    <input type="button" value="Cancel"
                                           onclick="history.back()"/>
                                </td>
                            </tr>
                    </table>
                </form>
				
			</div>			
		</div>
		
		<!--Footer code-->
		<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
	</body>
</html>

