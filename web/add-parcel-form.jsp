<%-- 
    Document   : add-parcel-form
    Created on : May 9, 2021, 3:01:43 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courier Express</title>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel = "stylesheet" type = "text/css" href = "Homepage.css">
    </head>
    <body>
        <%
            String branchName = (String)request.getSession().getAttribute("username");
        %>
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
				
					<li><a href="file:///C:/Users/Cool%20Tech/Desktop/Interface%20Code%20HTML/Code%20HTML/Homepage.html">HOME</a></li>
					
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
							<li><a href=adminLogin.jsp>SIGN IN</a></li>
							<li><a href=adminSignUp.jsp>SIGN UP</a></li>
						</ul>
					</li>
					
					<li style="float: right" ><a href="#"><%=branchName%></a></li>
				</ul>
			</div>
        <div class="id">
			<h1>Tracking Parcel</h1>
			<form action="process-add-form.jsp" method="POST">
                            <div class="table" align="center">
                            <table style="text-align: left">
                                <br>
                                <tr>
                                    <td><label for="TrackingNo">Tracking No : </label></td>
                                    <td><input id="text" name="trackingNo" style="width:50%;" placeholder="Scan barcode or key-in the number" required></td>
                                </tr>
                                <tr>
                                    <td><label for="Time and Date">Time and Date : </label></td>
                                    <td><input id="date" name="date&time" style="width:95%"></td>
                                </tr>
                                <tr>
                                    <td><label for="Status Parcel">Status : </label></td>
                                        <td><select id="status" name="status">
                                                <option value="Choose the current location or status">Choose the current location or status</option>
						<option value="[CE TRG_GATEWAY]Parcel has departed to hub TRG302">[CE TRG_GATEWAY]Parcel has departed to hub TRG302</option>
						<option value="[CE TRG_GATEWAY]Parcel has been picked up by Courier Express SJ3614">[CE TRG_GATEWAY]Parcel has been picked up by Courier Express SJ3614</option>
						<option value="[PQA31249]Parcel is in Kuala Selangor K.SEL21892">[PQA31249]Parcel is in Kuala Selangor K.SEL21892</option>
						<option value="[QYTPA8890]Parcel is in Storage Hub Pahang [PHG2198]">[QYTPA8890]Parcel is in Storage Hub Pahang [PHG2198]</option>
					</select></td>
                                </tr>
                                <tr>
                                    <td>
                                        <td><input type="submit" value="Submit">
                                        <input type="reset" value="Cancel"></td>
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
