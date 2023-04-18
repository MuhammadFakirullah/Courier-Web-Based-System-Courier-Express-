<%-- 
    Document   : EmployeeRegistration
    Created on : Jul 5, 2021, 12:58:44 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employee Registration</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
	</head>
	
	<body>
            <%
                String branchName = (String)request.getSession().getAttribute("username");
            %>
		<style>
			body {
				font-family: Arial, Helvetica, sans-serif;
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
					
					<li style="float: right" ><a href="#"><%=branchName%></a></li>
				</ul>
			</div>
			
			<!--Contents code-->
			<div id="content">
                <h2 align="center"><b>Employee Registration</b></h2>
                <form action="EmployeeRegistrationProcess.jsp" method="POST">
                    <table align="center" border="0">
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Name:
                            </td>
                            <td>
                                <input type="text" maxlength="50" name="txtNama" placeholder="" autofocus >
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                I/C:
                            </td>
                            <td>
                                <input type="text" maxlength="12" name="ic" placeholder="" required>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Date of Birth:
                            </td>
                            <td>
                                <input type="date" name="DateofBirth">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Address: 
                            </td>
                            <td>
                                <textarea rows="4" cols="40" name="txtAddress" placeholder=""></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Gender:
                            </td>
                            <td>
                                <input name="gender" type="text">
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Email ID:
                            </td>
                            <td>
                                <input type="email" name="email">
                            </td>
                        </tr>
						<tr>
                            <td style="background-color: #EA5090; color:white;">
                                Password:
                            </td>
                            <td>
                                <input type="password" id="pwd"name="pwd" minlength="8"><!--
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
								title="Must contain at least one number and one uppercase and 
								lowercase letter, and at least 8 or more characters" required>-->
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:#EA5090; color:white;">
                                Phone No.:
                            </td>
                            <td>
                                <input type="text" name="phoneNo" placeholder="">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input name="btnClear" value="Clear" type="reset">
                                &nbsp;
                                <input name="btnSubmit" value="Submit" type="submit">
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
