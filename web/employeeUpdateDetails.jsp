<%-- 
    Document   : employeeUpdateDetails
    Created on : Jul 5, 2021, 1:49:37 PM
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
                int empID = Integer.parseInt(request.getParameter("empID"));
                String txtNama="", ic="", DateofBirth="", txtAddress="", gender="", email="", pwd="", phoneNo="";
                
                if(gender.equals("Male")){
                    gender="Male";
                }
                else{
                    gender="Female";
                }

                Class.forName("com.mysql.jdbc.Driver");

                String myUrl= "jdbc:mysql://localhost:3306/adminacct";
                String uname="fakirullah";
                String pass="admin";

                Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);

                String myQuery = "select * from employee "
                            + "where empID=" + empID;          

                Statement myStatement = myConnection.createStatement();

                ResultSet myRs = myStatement.executeQuery(myQuery);

                while(myRs.next()){
                    txtNama = myRs.getString(2);
                    ic = myRs.getString(3);
                    DateofBirth = myRs.getString(4);
                    txtAddress = myRs.getString(5);
                    gender = myRs.getString(6);
                    email = myRs.getString(7);
                    pwd = myRs.getString(8);
                    phoneNo = myRs.getString(9);
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
					
					<li style="float: right"><a href="#">ADMIN</a></li>
				</ul>
			</div>
			
			<!--Contents code-->
			<div class="container" align="center">
				<h2 align="center"><b>Employee Details</b></h2>
                <form action="employeeUpdateDetails2.jsp" method="POST">
                    <input type="hidden" name="hidid" value="<%=empID%>"/>
                    <table align="center" border="0">
						<tr>
                            <td style="background-color: #EA5090; color:white;">
                                Employee ID:
                            </td>
                            <td>
                                <input type="text" name="txtID" value="<%=empID%>" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Name:
                            </td>
                            <td>
                                <input type="text" name="txtNama" value="<%=txtNama%>">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                I/C:
                            </td>
                            <td>
                                <input type="text" name="ic" value="<%=ic%>">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Date of Birth:
                            </td>
                            <td>
                                <input type="text" name="DateofBirth" value="<%=DateofBirth%>">
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
                                Gender:
                            </td>
                            <td>
                                <input type="text" name="gender" value="<%=gender%>">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Email ID:
                            </td>
                            <td>
                                <input type="text" name="email" value="<%=email%>">
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
                            <td style="background-color:#EA5090; color:white;">
                                Phone No.:
                            </td>
                            <td>
                                <input type="text" name="phoneNo" value="<%=phoneNo%>">
                            </td>
                        </tr>
                        <tr>
                                <td><label></label></td>
                                <td><input type="submit" value="Update"/>
                                    <input type="button" value="Cancel"
                                           onclick="window.location.href = 'employeeListDetails.jsp'; return false"/>
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
