<%-- 
    Document   : employeeUpdate
    Created on : Jul 8, 2021, 8:21:57 AM
    Author     : Cool Tech
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel = "stylesheet" type = "text/css" href = "Homepage.css">
        <link rel = "stylesheet" type = "text/css" href = "table.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <title>JSP Page</title>
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
			<%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adminacct","fakirullah","admin");
                
                Statement st = con.createStatement();
                
                String empName = request.getParameter("empName");
                String myQuery = "select * from employee where empName='"+empName+"'";
                ResultSet rs = st.executeQuery(myQuery);
                out.println("<div style='font-family: century gothic; padding=15px;'>");
                out.println("<h1>Display Parcel Tracking Data from Database</h1></div>");
                out.println("<div>");
                out.println("<center>");
                out.println("<table id='customers' border='1'>");
                out.println("<tr>");
                out.println("<th>EMPLOYEE ID</th>");
                out.println("<th>NAME</th>");
                out.println("<th>PHONE NO</th>");
                out.println("<th>ACTIONS</th>");
                out.println("</tr>");
                while(rs.next()){
                    out.println("<tr>");
                    out.println("<td>" + rs.getString(1) + "</td>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getString(3) + "</td>");
                    out.println("<td><a href=employeeUpdateDetails.jsp?empID="
                        +rs.getString(1) + "><i class='far fa-edit' style='font-size:24px'></i></a>"
                        + "&nbsp;"+"<a href=employeeDeleteDetails.jsp?empID="
                        +rs.getString(1) + " onclick=\"return confirm"+
                        "('Are you sure you want to delete?')\"><i class='far fa-trash-alt' style='font-size:24px'></i></a>"
                        +"</td>");
                    out.println("</tr>");
                }
                out.println("</table>");
                out.println("<tr>");
                out.println("<td><input type='button' value='Back' onclick='history.back();'/></td>");
                out.println("</tr>");
                out.println("<center>");
                out.println("</div>");
                }          

            catch(Exception e){
                System.out.println(e.getMessage());
            }
        %>
		</div>
                    <br><br>
                    
    </body>
    
                    <!--Footer code-->
			<div id="footer" style="background-color:#275962; color:white; clear:both; text-align:center; padding:10px">
			Copyright &copy; Courier Express</div>
    
    <script>
	document.getElementById('date').value = Date();
    </script>
    </body>
</html>


