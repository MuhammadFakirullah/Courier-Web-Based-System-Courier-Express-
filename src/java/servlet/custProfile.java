/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Cool Tech
 */
@WebServlet(name = "custProfile", urlPatterns = {"/custProfile"})
public class custProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //work on dopost method
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        //accept username and password from index.html
        String uname = request.getParameter("uname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("password");
        
        try{
            //open connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/adminacct?useSSL=false","fakirullah","admin");
            
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from admin where username='"+uname+"' and email='"+email+"' and password='"+password+"'"
                    + "and repeat_pass='"+rePassword+"'");
            
            if(rs.next()){
                request.getSession().setAttribute("username",rs.getString("username"));
                
                response.sendRedirect("custProfile.jsp");
            }
            else{
                response.sendRedirect("errorResponseAdmin.jsp");
            }
            con.close();
            
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
    }


    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    

}
