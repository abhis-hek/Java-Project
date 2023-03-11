<%-- 
    Document   : confirm
    Created on : 30-Jan-2023, 10:26:13 PM
    Author     : Asus
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <script>
     function showhide()
     {
           var div = document.getElementById("btn");
           var h1 = document.getElementById("otp");
                      var otp = document.getElementById("otp-value");

    if (div.style.display !== "block") {
        div.style.display = "block";
        
    }     
      lbl.innerHTML="Yor ride is on the way!";
      otp.style.display = "block";
      h1.style.display = "block";
      div.style.display = "none";
     }
     
  </script>
    </head>
    <body class="bg-gray-900"> 
        <% 
                  String pickup = request.getParameter("pickup");
                  String drop = request.getParameter("drop");
%>
                
<!-- component -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/iconoir-icons/iconoir@main/css/iconoir.css">

<div class='flex items-center justify-center min-h-screen '>
    <div class='w-full max-w-lg py-8 flex flex-row items-center justify-center mx-auto bg-[#FFFBFB] rounded-lg shadow-xl'>
        <div class="flex flex-col md:flex-row w-3/4 md:w-5/6 space-x-0 md:space-x-8">
            <div class="w-full md:w-2/5 flex flex-col items-center justify-center">
                <figure class="w-1/2 md:w-full  rounded-full overflow-hidden">
                    <img src="https://img.freepik.com/free-vector/organic-flat-dia-motorista-illustration_23-2148961409.jpg?w=740&t=st=1675361475~exp=1675362075~hmac=8a659278cf9c232b950510150bbc81bcab5eae1e022c0ed9186136c57c22f2d6" 
                </figure>
            </div>
            <div class="w-full md:w-3/5 space-y-4 flex flex-col justify-center items-center">
                <div id="container" class="flex flex-col justify-center space-y-3">
                    <h1 id="otp" style="display:none;" class="text-center md:text-left text-4xl font-bold text-gray-900">YOUR OTP</h1>
                    <p id="otp-value" style="display:none;" class="text-center text-gray-700 text-2xl font-semibold leading-6 w-full text-base" ><%= String.format("%04d", new Random().nextInt(10001)) %></p>
                </div>
                <p class="text-center text-gray-700 font-normal leading-6 w-full text-base" id="lbl">Please confirm your ride</p>
                

                
                <button class="transition-colors bg-purple-700 hover:bg-purple-800 p-2 rounded-sm w-full text-white text-hover shadow-md shadow-purple-900" id="btn" onclick="showhide()">
                    confirm
                </button>
            </div>
        </div>
    </div>
</div>

        
    </body>
</html>
