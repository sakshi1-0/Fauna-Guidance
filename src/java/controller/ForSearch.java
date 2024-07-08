/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import database.DB_Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
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
public class ForSearch extends HttpServlet {
 
    
    
    
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
   {
     response.sendRedirect("index.html");
    }
    
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        
        String pincode = request.getParameter("pincode");
        PrintWriter out = response.getWriter();
        System.out.println(pincode);
        
       
       try{
        Statement st = DB_Connection.getStatement();
        String query = "SELECT email,ngoname,contact,address,pincode,website FROM ngotest where pincode='"+pincode+"'";
   
           ResultSet rs = st.executeQuery(query);
        
           if (rs.next())
           {
               String e =rs.getString(1);               
                String n =rs.getString(2);
               System.out.println(e); 
                  System.out.println(n); 
          response.sendRedirect("registration.jsp");
           }
           else
           {
             response.sendRedirect("login.jsp");
           } 
        }
        catch(SQLException e){
            System.out.println(e);
        }       
    
      
    }
}
