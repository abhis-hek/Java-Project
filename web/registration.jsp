<%-- 
    Document   : registration
    Created on : 26-Jan-2023, 8:45:30 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="registration.css">
        
    </head>
    <body class="bg-black ">
        <div class="bg-black ">
      <nav class="mx-2 flex text-white justify-around">
        <h1 class="text-4xl font-semibold text-white flex py-4">
          RealTaxi
        </h1>
        <ul class="flex mx-2 items-center">
          
          <li class="mx-2 cursor-pointer">About us</li>
          <li class="mx-2 cursor-pointer">Contact us</li>
          
        </ul>
        
      </nav>
        <div class="wrapper">
        <div class="form-left">
            <h2 class="text-uppercase">information</h2>
            <p>
                
            </p>
            <p class="text">
                <span>IF you have an account</span>
                
            </p>
            <div class="form-field">
                <input type="submit" class="account" value="Login" onClick="login()">
            </div>
            <script>
            function login(){
                location.href = "index.jsp";
            }
            
        </script>
        </div>
        <form class="form-right" action="loginpage">
            <input type="hidden" value="Page2" name="page">
            <h2 class="text-uppercase">Registration form</h2>
            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label>First Name</label>
                    <input type="text" name="first_name" id="first_name" class="input-field" required>
                </div>
                <div class="col-sm-6 mb-3">
                    <label>Last Name</label>
                    <input type="text" name="last_name" id="last_name" class="input-field" required>
                </div>
            </div>
            <div class="mb-3">
                <label>Your Email</label>
                <input type="email" class="input-field" name="email" required>
            </div>
            <div class="row">
                <div class="col-sm-6 mb-3">
                    <label>Password</label>
                    <input type="password" name="pwd" id="pwd" class="input-field" required>
                </div>
                <div class="col-sm-6 mb-3">
                    <label>Current Password</label>
                    <input type="password" name="cpwd" id="cpwd" class="input-field" required>
                </div>
            </div>
            <div class="mb-3">
                <label class="option">I agree to the <a href="#">Terms and Conditions</a>
                    <input type="checkbox" checked>
                    <span class="checkmark"></span>
                </label>
            </div>
            <div class="form-field">
                <input type="submit" value="Register" class="register" name="register">
            </div>
        </form>
    </div>
    </body>
</html>
