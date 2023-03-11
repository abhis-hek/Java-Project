<%-- 
    Document   : location
    Created on : 25-Jan-2023, 10:13:40 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script src="index.js"></script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&libraries=places&callback=initMap&v=weekly"
      defer
      >
    </script>
    <script>
    
            
    
            
    </script>
        <style>
        #map {
        height: 400px; /* The height is 400 pixels */
        width: 50%; /* The width is the width of the web page */
        border-radius:10px; 
      }
      html{
          scroll-behavior:smooth;
          
      }
    </style>
    </head>
    <body class="bg-gray-900">
          <div class="bg-gray-900">
      <nav class="mx-2 flex text-white justify-around">
        <h1 class="text-4xl font-semibold text-white flex py-4">
          RealTaxi
        </h1>
        <ul class="flex mx-2 items-center">
          
          <li class="mx-2 cursor-pointer">About us</li>
          <li class="mx-2 cursor-pointer">Contact us</li>
          
        </ul>
        
      </nav><br><br>
              <div class="flex flex-row justify-around items-center">
        <main>
      <div class="bg-gray-900 h-150 px-20 py-28">
        <div class="flex flex-col items-center">
          <div class="text-3xl text-white font-semibold mb-4">Tell us where you want to go !!</div><br>
          <form class="flex flex-col items-center" method="GET">
              <input class="text-sm font-normal w-80 p-4 rounded-xl overflow-visible" name="pickup" type="text" placeholder="Enter your pickup location"  id="start">
          <br>
          <input class="text-sm font-normal w-80 p-4 rounded-xl overflow-visible" type="text" name="drop" placeholder="Enter your drop location" id="end"><br><br>
          <a href="#car" class="inline-flex items-center px-4 py-4 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Select your Ride
        </a>
          </form>
          
          
          
         
        </div>
      </div>
    </main>
                  
              <div id="map"></div>
              </div>
      
      <br><br><br><br><br>
      
      
        
              <div class="flex flex-row justify-around" id="car">        
<div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <a href="#">
        <img class="rounded-t-lg" src="mini.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="carinfo.jsp">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">MINI</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Comfy Hatchbatch and are always Pocket-friendly</p>
        <label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="kilo" >Distance</label>
          <label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="minute" > Time </label>
        <p class="mb-3 font-semibold text-gray-700 dark:text-gray-400 text-xl py-1" id="mini" >Price</p>
        <a href="carinfo.jsp" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Search for ride
        </a>
    </div>
</div>
        
    
    
<div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700" >
    <a href="#">
        <img class="rounded-t-lg" src="sedan.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="carinfo.jsp">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">SEDAN</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Sedans with Comfort and free wifi with best drivers </p>
        
<label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="kilo1" >Distance </label>
          <label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="minute1" >Time </label>
        <p class="mb-3 font-semibold text-gray-700 dark:text-gray-400 text-xl py-1" id="sedan" >Price </p>
                <a href="carinfo.jsp" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Search for ride
        </a>
    </div>
</div>
            <div class="max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
    <a href="#">
        <img class="rounded-t-lg" src="limo.jpg" alt="" />
    </a>
    <div class="p-5">
        <a href="carinfo.jsp">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">LUXURY</h5>
        </a>
        <p class="mb-3 font-normal text-gray-700 dark:text-gray-400">Best in class comfort with all facilities and best drivers </p>
<label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="kilo2" >Distance</label>
          <label class="text-xl font-semibold dark:text-gray-400 flex py-1" id="minute2" >Time</label>
        <p class="mb-3 font-semibold text-gray-700 dark:text-gray-400 text-xl py-1" id="luxury" >Price </p>
                <a href="carinfo.jsp" class="inline-flex items-center px-3 py-2 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
            Search for ride
        </a>
    </div>
</div>
            </div>
              <br><br>
             
              
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</html>
