<%-- 
    Document   : employeeDetails
    Created on : Jul 5, 2021, 1:21:13 PM
    Author     : Cool Tech
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>View Employee Details</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
                <link rel = "stylesheet" type = "text/css" href = "table.css">
                <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	</head>
	
	<body>
            
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
				<h2 align="center"><b></b></h2>
                                
                                <%
                                        Class.forName("com.mysql.jdbc.Driver");

                                        String myUrl = "jdbc:mysql://localhost:3306/adminacct";
                                        String uname = "fakirullah";
                                        String pass = "admin";
                                        Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);

                                        Statement myStatement = myConnection.createStatement();

                                        String myQuery = "select * from employee";
                                        ResultSet myRs = myStatement.executeQuery(myQuery);

                                        out.println("<div style='font-family: century gothic; padding=15px;'>");
                                        out.println("<h1>List of employee</h1></div>");
                                        out.println("<div>");
                                        out.println("<input type=button value='Add Employee' "
                                                + "style='font-family: century gothic; text-align: left;'"
                                                + "onclick=\"window.location.href = 'EmployeeRegistration.jsp';"
                                                + "return false;\">" );
                                        out.println("<br><br>");
                                        out.println("</div>");
                                        out.println("<div align='center'>");
                                        out.println("<table id='customers'; border='1'; style='border-collapse: collapse;'>");
                                        out.println("<tr>");
                                        out.println("<th>Employee ID</th>");
                                        out.println("<th>Name</th>");
                                        out.println("<th>Phone No</th>");
                                        out.println("<th>ACTIONS</th>");
                                        out.println("<tr>");
                                        while (myRs.next()){
                                            out.println("<tr>");
                                            out.println("<td>" + myRs.getString(1) + "</td>");
                                            out.println("<td>" + myRs.getString(2) + "</td>");
                                            out.println("<td>" + myRs.getString(3) + "</td>");
                                            out.println("<td><a href=employeeUpdateDetails.jsp?empID="
                                                    + myRs.getString(1) + "><i class='far fa-edit' style='font-size:24px'></i></a>"
                                                    + "&nbsp;"+"<a href=employeeDeleteDetails.jsp?empID="
                                                    +myRs.getString(1) + " onclick=\"return confirm"+
                                                        "('Are you sure you want to delete?')\"><i class='far fa-trash-alt' style='font-size:24px'></i></a>"
                                                    +"</td>");
                                            out.println("</tr>");
                                        }
                                        out.println("</table>");
                                        out.println("</div>");
                                        myConnection.close();
                                %>
                                
				<br/><br/>
				<div class="btncontainer">
					<button type="submit" class="backbtn">Back</button>
				</div>
			</div>			
		</div>
    
		<!--Footer code-->
		<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
	</body>
</html>
