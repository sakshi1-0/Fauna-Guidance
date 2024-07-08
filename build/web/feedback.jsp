<%-- 
    Document   : feedback
    Created on : 24 Nov, 2023, 9:08:41 PM
    Author     : Sakshi
--%>


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
    
      <title>Feedback submitted</title>
    
      <!-- bootstrap core css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    
      <!-- fonts style -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans|Poppins:400,700&display=swap" rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="css/style.css" rel="stylesheet" />
      <!-- responsive style -->
      <link href="css/responsive.css" rel="stylesheet" />
      
      <link rel="stylesheet" href="css/registerpopup.css">
    </head>
    
    <body>
       
      <div class="hero_area ">
        <!-- header section strats -->
        <header class="header_section">
          <div class="container-fluid">
            <nav class="navbar navbar-expand-lg custom_nav-container">
              <div class="" id="">
                
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
    
    <div class="container">
        
        <div class="popup">
            <img src="images/404-tick.png">
            <h2>Thank You!</h2>
            <p>Your feedback has been successfully sent.Thanks!</p>
            <button class="btn1" type="button" onclick="document.location='index.html'">OK</button>
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

