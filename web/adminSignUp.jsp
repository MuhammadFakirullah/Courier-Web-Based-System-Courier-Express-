<%-- 
    Document   : adminSignUp
    Created on : Jul 4, 2021, 1:56:41 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <title>Courier Express</title>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
    </head>
    <body>
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
				
					<li><a href="homepage.jsp">HOME</a></li>
					
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
						<!--<ul>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/Login.html'>Log In</a></li>
							<li><a href='file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/SignUp.html'>Sign Up</a></li>
						</ul>-->
					</li>
                                        
                                        <li><a href='#'>ADMIN	</a>
						<ul>
							<li><a href=loginacct.jsp>SIGN IN</a></li>
							<li><a href=adminSignUp.jsp>SIGN UP</a></li>
						</ul>
					</li>
				</ul>
			</div>
        <div class="id">
			<h1>Admin Sign Up</h1>
			<form action="adminSignUpProcess.jsp" method="POST">
                            <div class="table" align="center">
                            <table align="center" border="0">
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Branch Name:
                            </td>
                            <td>
                                <input type="text" maxlength="50" name="txtNama" placeholder="" autofocus required>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Address: 
                            </td>
                            <td>
                                <textarea rows="4" cols="40" name="txtAddress" placeholder="" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #EA5090; color:white;">
                                Password:
                            </td>
                            <td>
                                <input type="password" id="pwd" name="pwd"minlength="8"
								pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
								title="Must contain at least one number and one uppercase and 
								lowercase letter, and at least 8 or more characters" required>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color:#EA5090; color:white;">
                                Branch Phone No:
                            </td>
                            <td>
                                <input type="text" name="phoneNo" placeholder="" required>
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
                            </div>
                            <br>
			</form>
		</div>
                    <br><br>
                    
    </body>
                        <!--Footer code-->
			<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
                        
    <script>
	document.getElementById('date').value = Date();
    </script>
</html>
