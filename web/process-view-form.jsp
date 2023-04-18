<%-- 
    Document   : process-view-form
    Created on : May 9, 2021, 3:29:05 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courier Express</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel = "stylesheet" type = "text/css" href = "Homepage.css">
        <link rel = "stylesheet" type = "text/css" href = "table.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
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
			
        <%
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/parcel_trace";
            String uname = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
       
            Statement myStatement = myConnection.createStatement();
            
            String myQuery = "select * from parcel";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            
            out.println("<div style='font-family: century gothic; padding=15px;'>");
            out.println("<h1>Display Parcel Tracking Data from Database</h1></div>");
            out.println("<div>");
            out.println("<input type=button value='Add Parcel Info' "
                    + "style='font-family: century gothic; text-align: left;'"
                    + "onclick=\"window.location.href = 'add-parcel-form.jsp';"
                    + "return false;\">" );
            out.println("<br><br>");
            out.println("</div>");
            out.println("<div align='center'>");
            out.println("<table id='customers'; border='1'; style='border-collapse: collapse;'>");
            out.println("<tr>");
            out.println("<th>ID</th>");
            out.println("<th>TRACKING NO</th>");
            out.println("<th>DATE & TIME</th>");
            out.println("<th>STATUS</th>");
            out.println("<th>ACTIONS</th>");
            out.println("<tr>");
            while (myRs.next()){
                out.println("<tr>");
                out.println("<td>" + myRs.getString(1) + "</td>");
                out.println("<td>" + myRs.getString(2) + "</td>");
                out.println("<td>" + myRs.getString(3) + "</td>");
                out.println("<td>" + myRs.getString(4) + "</td>");
                out.println("<td><a href=process-update-form.jsp?id="
                        + myRs.getString(1) + "><i class='far fa-edit' style='font-size:24px'></i></a>"
                        + "&nbsp;"+"<a href=process-delete-form.jsp?id="
                        +myRs.getString(1) + " onclick=\"return confirm"+
                            "('Are you sure you want to delete?')\"><i class='far fa-trash-alt' style='font-size:24px'></i></a>"
                        +"</td>");
                out.println("</tr>");
            }
            out.println("</table>");
            out.println("</div>");
            myConnection.close();
        %>
        <br><br>
        <!--Footer code-->
        <div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
	Copyright &copy; Courier Express</div>  
    </body>
</html>
