<%-- 
    Document   : index
    Created on : 25-Jan-2023, 9:58:47 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="login.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-900 ">
         <div class="bg-gray-900 ">
      <nav class="mx-2 flex text-white justify-around">
        <h1 class="text-4xl font-semibold text-white flex py-4">
          RealTaxi
        </h1>
        <ul class="flex mx-2 items-center">
         
          <li class="mx-2 cursor-pointer">About us</li>
          <li class="mx-2 cursor-pointer">Contact us</li>
          
        </ul>
        
      </nav>
        <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    
    <!-- Login Form -->
    <form action="logincheck">
        <p class="text-2xl font-semibold text-center">Join the Journey !!</p><br>
        <input type="email" id="login" class="text-field fadeIn second" name="name" placeholder="login" required=""><br><br>
        <input type="password" id="password" class="text-field fadeIn third" name="pass" placeholder="password" required=""><br><br><br>
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="registration.jsp">REGISTER</a>
    </div>

  </div>
</div>
    </body>
</html>
