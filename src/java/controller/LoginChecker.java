/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.DB_Connection;
import dto.Detail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sakshi
 */

public class LoginChecker extends HttpServlet {

   
     public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
   {
     response.sendRedirect("index.html");
    }
    
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
     String email = request.getParameter("email");
     String password = request.getParameter("password");
     
    
      
     String tablepassword="";
        try{
        Statement st = DB_Connection.getStatement();
        String query = "Select password from ngotest where email='"+email+"'";
            ResultSet rs = st.executeQuery(query);
            if(rs.next())
            {
                tablepassword = rs.getString(1);
               
            }
            
        }
        catch(SQLException e){
            System.out.println(e);
        }
        if(email!=null && password!=null && !email.trim().equals(" ") &&  password.equals(tablepassword))
         
         {
          
           HttpSession session = request.getSession(true);
            session.setAttribute("email", email);
          response.sendRedirect("loginpopup.jsp");
             
          
           }
           else
           {
               
                response.sendRedirect("login.html");
           } 
     
    }
   
}
