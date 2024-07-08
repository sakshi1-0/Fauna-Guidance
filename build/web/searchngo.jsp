
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DB_Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>NGO </title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans|Poppins:400,700&display=swap" rel="stylesheet">
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  <link rel="stylesheet" href="css/card1.css">
        <link rel="stylesheet" href="css/registration.css">
        <script src="https://kit.fontawesome.com/6e7ab1df08.js" crossorigin="anonymous"></script>
</head>

<body>
    
    <%  
       String pincode = request.getParameter("pincode");
       String contact ="";
       String ngoname ="";
       String address=""; 
       String website=""; 
                       
       try{
        Statement st = DB_Connection.getStatement();
        String query = "SELECT ngoname,contact,address,website FROM ngotest where pincode='"+pincode+"'";
   
           ResultSet rs = st.executeQuery(query);
        
           if (rs.next())
           {
               ngoname =rs.getString(1);               
               contact =rs.getString(2); 
               address =rs.getString(3);
               website =rs.getString(4);
             System.out.println(ngoname);
           }
           else
           {
             response.sendRedirect("login.html");
           } 
        }
        catch(SQLException e){
            System.out.println(e);
        }       
    
      
        %>
  <div class="hero_area ">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container">
          <div class="" id="">
            <div class="User_option">
             
            </div>

            <div class="custom_menu-btn">
              <button onclick="openNav()">
                <span class="s-1">

                </span>
                <span class="s-2">

                </span>
                <span class="s-3">

                </span>
              </button>
            </div>
            <div id="myNav" class="overlay">
              <div class="overlay-content">
                <a href="index.html">Home</a>
                <a href="about.html">About Us</a>
                <a href="registration.html">Add NGOs here</a>
                <a href="login.html">Login</a> 
              </div>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->

    
        <div class="main">
            <div class="cards" float="right">
               
                <div class="Title">
                  <h1 style =" text-align: left" >Welcome to <%= ngoname%></h1>
                </div>
                <div class="des">
                    <div class ="input" style= " text-align: left ;" >
                        <i class="fa-solid fa-phone"></i><label  style="font-family: sans-serif; color:#fbfcfc; font-size: 15px;font-weight: bold; "><%= contact%></label>
            </div>
               <div class ="input"  style= " text-align: left ;">
                   <i class="fa-solid fa-house-user"></i><label  style= "font-family: sans-serif; color:#fbfcfc; font-size: 15px; font-weight: bold; "><%= address%></label>
            </div>
            <button onclick="document.location='<%= website%>'">Visit Website </button>
                </div>
            </div>
            <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
            <script type="text/javascript" src="js/bootstrap.js"></script>
            <script>
              function openNav() {
                document.getElementById("myNav").classList.toggle("menu_width")
                document.querySelector(".custom_menu-btn").classList.toggle("menu_btn-style")
              }
            </script>
            
        </body>
    </html>
