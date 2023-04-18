<%-- 
    Document   : searchParcel
    Created on : Jul 6, 2021, 10:59:00 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This site is for Employee only.</h1>
        <p>Sharing this site publicly is strictly prohibited and if any employee was found guilty for sharing this site will be sentenced to jail<br>
        because it is against our policy.</p>
        
        <form action="parcelUpdate.jsp">
            <input type="text" name="trackingNo" required/>
            <input type="submit" value="Search"/>
        </form>
        
        
    </body>
</html>
