<%-- 
    Document   : TrackNTrace
    Created on : May 17, 2021, 6:03:06 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trace & Track</title>
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
                <h2 align="center"><b>Trace and Track</b></h2>
				<hr/>
				<br/>
				
				<div class="content-inside-tab">
				<div class="track-and-trace">
                                    <form action="TrackNTraceOutput.jsp" method="POST">
						<div>
							<h3>Enter the tracking number stated on your AWB/EWB</h3>
                                                        <textarea name="idno" rows="4" cols="40" placeholder="E.g: 600000000001,600000000002"></textarea>
							<br/>
							<div class="tracking-modal-text tracking-modal-text-2">
								<br/>Enter your airwaybill number (separated by comma).<br/>
								Available up to 10 airwaybills.
							</div>
						</div>
						<div style="padding: 10px;" class="margin-top-10px">
							<a href="#"><button type="submit">
								<i class="search-location"></i>
								<span style="font-family: 'Roboto'; font-weight: bold;">Track Now</span>
							</button></a>
						</div>
					</form>
				</div>
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
        
               
                
		<script type="text/javascript">
			function checkAWB() {
				var val = document.getElementById("awbTextarea").value;
				val = val.replace(" ", "");
				val = val.trim();
				window.location.href = "track.php?awbs=" + val;
			}
                        
		</script>
                
    </body>
</html>
