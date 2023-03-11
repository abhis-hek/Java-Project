<%-- 
    Document   : carselection
    Created on : 27-Jan-2023, 7:07:54 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="index.js"></script>
        <script>
            function confirm(){
                 
                location.href="carinfo.jsp";
                
                
            }
                
              
            
            
        </script>
        
    </head>
    <body class="bg-black">
        <div class="bg-black ">
      <nav class="mx-2 flex text-white justify-around h-150" >
        <h1 class="text-4xl font-semibold text-white flex py-4">
          RealTaxi
        </h1>
        <ul class="flex mx-2 items-center">
          <li class="mx-2 cursor-pointer">Log in</li>
          <li class="mx-2 cursor-pointer">Sign in</li>
          <li class="mx-2 cursor-pointer">About us</li>
          <li class="mx-2 cursor-pointer">Contact us</li>
          
        </ul>
        <%
String pickup = request.getParameter("pickup");
                  String drop = request.getParameter("drop");
%>
      </nav><br><br>
        <div class="flex flex-row justify-around" id="car">        
<div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <a href="#">
        <img class="rounded-t-lg" src="67335.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="confirm.jsp">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">MINI</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
        <label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="kilo" >Distance</label>
          <label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="minute" > Time </label>
        <p class="mb-3 font-semibold text-gray-700 dark:text-gray-400 text-xl py-1" id="mini" >Price</p>
        <button  class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" onclick="confirm()">
            Search for ride
        </button>
    </div>
</div>
       
    
    
<div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700" >
    <a href="#">
        <img class="rounded-t-lg" src="67335.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">SEDAN</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
        
<label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="kilo1" >Distance </label>
          <label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="minute1" >Time </label>
        <p class="mb-3 font-semibold text-gray-700 dark:text-gray-400 text-xl py-1" id="sedan" >Price </p>
                <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Search for ride
        </a>
    </div>
</div>
            <div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <a href="#">
        <img class="rounded-t-lg" src="67335.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="#">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">LUXURY</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology acquisitions of 2021 so far, in reverse chronological order.</p>
<label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="kilo2" >Distance</label>
          <label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="minute2" >Time</label>
        <p class="mb-3 font-semibold text-gray-700 dark:text-gray-400 text-xl py-1" id="luxury" >Price </p>
                <a href="#" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Search for ride
        </a>
    </div>
</div>
            </div>

        
        
        
    </body>
</html>
