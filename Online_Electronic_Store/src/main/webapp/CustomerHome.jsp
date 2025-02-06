
<%@page import="com.pack2.CustomerBean"%>
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
        background: url('./welcome.jpg');
        background-repeat: no-repeat;
  		background-size: 200vh;
    		background-position: center;
    		text-align: center;
			background-size: cover;
		   	height: 100vh;
		   	font-family: "Space Grotesk", serif;
    }
    .container {
        background: rgba(255, 255, 255, 0.8);
        width: 20%;
        margin: 10% auto;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px gray;
    }
    h1 {
        color: #333;
    }
    a {
        display: inline-block;
        text-decoration: none;
        color: white;
        background-color: #007bff;
        padding: 10px 20px;
        border-radius: 5px;
        transition: 0.3s;
        font-size: 16px;
    }
    a:hover {
        background-color: #0056b3;
    }
    .logout {
        background-color: #dc3545;
    }
    .logout:hover {
        background-color: #a71d2a;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>
            <%
                CustomerBean cb = (CustomerBean)session.getAttribute("cbean"); 
                
                    out.println("Welcome, " + cb.getcFname() + "!!!");
           
            %>
        </h1>
        <br>
        <a href="view2">View Products</a>
        <br><br>
        <a href="logout" class="logout">Logout</a>
    </div>
</body>
</html>