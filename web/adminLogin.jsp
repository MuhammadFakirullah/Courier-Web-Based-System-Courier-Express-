<%-- 
    Document   : adminLogin
    Created on : Jul 4, 2021, 1:41:24 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                                        
                                        <li><a href='#'>ADMIN	</a>
						<ul>
							<li><a href=loginacct.jsp>SIGN IN</a></li>
							<li><a href=adminSignUp.jsp>SIGN UP</a></li>
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
			
			<!--Contents code-->
			<head>
				<style>
					p.ridge {
						border-style:ridge;
						border-color:#275962;
						width:60%;
						line-height: 1.5;
						padding: 20px;
						text-align: left;
						border-bottom-left-radius: 25px;
					}
				</style>
			</head>
				
			<body>
                            <br><br>
				<center><form action="LoginServlet" method="POST">
                                    <h1>Please Login</h1>
                                    <table>
                                        <tr>
                                            <td><label>Branch Name:</label></td>
                                            <td><input type="text" name="username" style="width: 300px; padding: 6px; 
                                                       border: 1px solid #ccc; border-radius: 2px; resize: vertical;" required></td>
                                        </tr>
                                        <tr>
                                            <td><label>Password:</label></td>
                                            <td><input type="password" name="psw"  style="width: 300px; padding: 6px; 
                                                       border: 1px solid #ccc; border-radius: 2px; resize: vertical;" required></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <td><input type="submit" value="login"></td>
                                            </td>
                                        </tr>
                                    </table>
                                </center></form>
                                <br><br>
			</body>
				
			<!--Footer code-->
			<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
				Copyright &copy; Courier Express</div>
			
		</div>

    </body>
</html>

