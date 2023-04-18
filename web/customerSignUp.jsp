<%-- 
    Document   : customerSignUp
    Created on : Jul 5, 2021, 11:36:36 AM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Sign Up</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
	</head>
	
	<body>
		<style>
			body {
				font-family: Arial, Helvetica, sans-serif;
			}
			
			form {
				text-align: left;
			}

			/* Full-width input fields */
			input[type=text], input[type=password] {
				width: 100%;
				padding: 12px 10px;
				margin: 8px 0;
				display: inline-block;
				border: 1px solid #ccc;
				box-sizing: border-box;
				background: #f1f1f1;
			}

			/* Add a background color when the inputs get focus */
			input[type=text]:focus, input[type=password]:focus {
				background-color: #ddd;
				outline: none;
			}
					
			hr {
				border: 1px solid #f1f1f1;
			}

			/* Set a style for all buttons */
			button {
				background-color: #4CAF50;
				color: white;
				padding: 14px 20px;
				margin: 0;
				border: none;
				cursor: pointer;
				width: 100%;
			}

			button:hover {
				opacity:0.8;
			}

			/* Extra styles for the cancel button */
			.cancelbtn {
				background-color: #f44336;
			}

			/* Float cancel and signup buttons and add an equal width */
			.cancelbtn, .signupbtn {
				float: left;
				width: 50%;
			}

			/* Add padding to container elements */
			.container {
				padding: 10px;
			}

			/* Clear floats */
			.clearfix::after {
				content: "";
				clear: both;
				display: table;
			}

			/* Change styles for cancel button and signup button on extra small screens */
			@media screen and (max-width: 300px) {
				.cancelbtn, .signupbtn
				{
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
				
					<li><a href=homepage.jsp>HOME</a></li>
					
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
			
			<!--Contents code-->
			<form action="customerSignUpProcess.jsp" method="post">
				<div class="container">
					<h1>Sign Up</h1>
					<p>Please fill in this form to create an account.</p>
					<hr>

					<label for="username"><b>Username</b></label>
					<input type="text" placeholder="Enter Email" name="uname" required>

					<label for="email"><b>Email</b></label>
					<input type="text" placeholder="Enter Email" name="email" required>

					<label for="psw"><b>Password</b></label>
					<input type="password" placeholder="Enter Password" name="psw" required>

					<label for="psw-repeat"><b>Repeat Password</b></label>
					<input type="password" placeholder="Repeat Password" name="psw-repeat" required>

					<label>
						<input type="checkbox" checked="checked" name="remember" style="margin-bottom:10px">Remember me
					</label>

					<p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
					
					<div class="clearfix">
						<button type="button" class="cancelbtn">Cancel</button>
						<button type="submit" class="signupbtn">Sign Up</button>
					</div>
				</div>
			</form>
		</div>
		
		<!--Footer code-->
		<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
	</body>
</html>