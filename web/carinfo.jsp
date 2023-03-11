<%-- 
    Document   : carinfo
    Created on : 27-Jan-2023, 11:43:05 PM
    Author     : Asus
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
        <script src="https://cdn.tailwindcss.com"></script>
        <script>
            function confirm(pickup,drop){
                 
                location.href="confirm.jsp?pickup="+pickup+"&drop="+drop;
                console.log(pickup,drop);
                
            }
               
              
            
            
        </script>
    </head>
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
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

    <body>
        <!-- component -->

<div class="flex items-center justify-center min-h-screen bg-gray-900">
    
	<div class="col-span-12">
		<div class="overflow-auto lg:overflow-visible ">
			<table class="table text-gray-400 border-separate space-y-6 text-sm">
				<thead class="bg-gray-800 text-gray-500">
					<tr>
						<th class="p-3">Driver</th>
						<th class="p-3 text-center">Car</th>
						<th class="p-3 text-center">Car no.</th>
						<th class="p-3 text-center">Distance</th>
						<th class="p-3 text-center">Book</th>
					</tr>
                                        </thead>
                                        <%
 
 
                                            
                                            
                                            
String pickup = request.getParameter("pickup");
                  String drop = request.getParameter("drop");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "cab_book";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM driverinfo2 order by RAND() LIMIT 4";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
                                        
				
				<tbody>
                                
					<tr class="bg-gray-800">
                                            <td class="p-3"><a href="confirm.jsp">
							<%=resultSet.getString("name") %></a>
						</td>
						<td class="p-3 text-center" >
							<%=resultSet.getString("car") %>
						</td>
						<td class="p-3 font-bold text-center">
							<%=resultSet.getString("carno") %>
						</td>
						<td class="p-3 text-center">
							<%=resultSet.getString("distance") %>
						</td>
						<td class="p-3">
							
						<button class="bg-blue-500 hover:bg-blue-700 w-35 text-white font-bold py-2 px-4 border border-blue-700 rounded"" onClick="confirm('<%=pickup%>','<%=drop%>')">book</button>
							
						</td>
					</tr>
                                        
				</tbody>
                                <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
			</table>
		</div>
	</div>
</div>
                        
        
<style>
	.table {
		border-spacing: 0 18px;
                
                
	}

	i {
		font-size: 1rem !important;
	}

	.table tr {
		border-radius: 20px;
                width: 50%;
	}

	tr td:nth-child(n+5),
	tr th:nth-child(n+5) {
		border-radius: 0 .625rem .625rem 0;
	}

	tr td:nth-child(1),
	tr th:nth-child(1) {
		border-radius: .625rem 0 0 .625rem;
	}
</style>
    </body>
</html>
