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
public class ToDelete extends HttpServlet {
 public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
   {
     response.sendRedirect("index.html");
    }
    
              
  
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
         
         String email = request.getParameter("email");
          String password = request.getParameter("password"); 
        
        PrintWriter out = response.getWriter();
       
       
       try{
        Statement st = DB_Connection.getStatement();
        String query = "DELETE FROM ngotest where email='"+email+"' ";
        int i= st.executeUpdate(query);
        
           if (i>0)
           {           
               
               response.sendRedirect("deletepopup.jsp");
           }
           else
           {
                
                response.sendRedirect("delete.jsp");
           } 
        }
        catch(SQLException e){
            System.out.println(e);
        }       
    
      
    }
}
