<%-- 
    Document   : customerLogin
    Created on : Jul 5, 2021, 11:17:35 AM
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
		<style>
			body {
				font-family: Arial, Helvetica, sans-serif;
			}
			
			form {
				border: 3px solid #f1f1f1;
			}

			input[type=text], input[type=password] {
				width: 100%;
				padding: 12px 10px;
				margin: 8px 0;
				display: inline-block;
				border: 1px solid #ccc;
				box-sizing: border-box;
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
			
			/* Extra styles for the cancel button */
			.cancelbtn {
				background-color: #f44336;
			}

			/* Float cancel and signup buttons and add an equal width */
			.cancelbtn, .loginbtn {
				float: center;
				width: 30%;
			}

			.imgcontainer {
				text-align: center;
				margin: 15px 0 10px 0;
			}

			img.avatar {
				width: 20%;
				border-radius: 50%;
			}

			.container {
				text-align: left;
				padding: 10px;
			}

			span.psw {
				float: right;
				padding-top: 15px;
			}

			/* Change styles for span and cancel button on extra small screens */
			@media screen and (max-width: 300px) {
				span.psw {
					display: block;
					float: none;
				}
				.cancelbtn, loginbtn {
					width: 100%;
				}
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
					
					<li style="float: right"><a href="#">LOG IN / SIGN UP</a>
						<ul>
							<li><a href='#'>Log In</a></li>
							<li><a href='#'>Sign Up</a></li>
						</ul>
					</li>
				</ul>
			</div>
			
			<div class="imgcontainer">
				<h1>Login Form</h1>
				<img src="photo/img_avatar.png" alt="Avatar" class="avatar">
			</div>

			
			<!--Contents code-->
			<form action="custLoginServlet" method="post">
				
				<div class="container">
					<label for="uname"><b>Username</b></label>
					<input type="text" placeholder="Enter Username" name="uname" required>

					<label for="psw"><b>Password</b></label>
					<input type="password" placeholder="Enter Password" name="psw" required>

					<label>
					  <input type="checkbox" checked="checked" name="remember"> Remember me
					</label>
				</div>

				<div class="container" style="background-color:#f1f1f1">
                                        <center><button type="submit" class="loginbtn" >Login</button>
                                            <button type="button" class="cancelbtn">Cancel</button></center>
					<span class="psw">Forgot <a href="#">password?</a></span>
				</div>
			</form>
		</div>
		
		<!--Footer code-->
		<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
	</body>
</html>