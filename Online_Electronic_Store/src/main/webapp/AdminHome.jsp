<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Belanosima:wght@400;600;700&family=Space+Grotesk:wght@300..700&display=swap');
</style>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        margin: 0;
        padding: 0;
        background: url(./wlcadmin.jpg);
            background-repeat: no-repeat;
  			background-size: 250vh;
    		background-position: center;
    		text-align: center;
			background-size: cover;
		   	height: 100vh;
		   	font-family: "Space Grotesk", serif;

		   	
    }
    .container {
        
        width: 50%;
        margin: 100px auto;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }
    h1 {
    	text-shadow:black;
        color: #333;
        
    }
    a {
        display: block;
        text-decoration: none;
        font-size: 18px;
        color: white;
        background: #007bff;
        padding: 10px 20px;
        margin: 10px auto;
        width: 200px;
        border-radius: 10px;
        transition: background 0.3s ease;
    }
    a:hover {
        background: #0056b3;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>
            <%
                AdminBean abean = (AdminBean)session.getAttribute("abean");
               out.println("Welcome Mr. " + abean.getaFname() + "!!!<br><br>");
           	%>
        </h1>
        <a href="AddProduct.html">Add Product</a>
        <a href="view1">View Product</a>
        <a href="logout">Logout</a>
        </h1>
    </div>
</body>
</html>