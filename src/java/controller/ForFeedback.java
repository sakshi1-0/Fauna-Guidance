/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.DB_Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sakshi
 */
public class ForFeedback extends HttpServlet {
 public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
   {
     response.sendRedirect("index.html");
    }
    
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String emails = request.getParameter("emails");
        String message = request.getParameter("message");
       
        PrintWriter out = response.getWriter();
        
        
       
       try{
        Statement st = DB_Connection.getStatement();
        String query = "INSERT INTO feedback  values ('"+name+"','"+phone+"','"+emails+"','"+message+"')";
   
        int i= st.executeUpdate(query);
        
           if (i>0)
           {
           
               response.sendRedirect("feedback.jsp");
           }
           else
           {
             
                response.sendRedirect("index.html");
           } 
        }
        catch(SQLException e){
            System.out.println(e);
        }       
    
      
    }
}
