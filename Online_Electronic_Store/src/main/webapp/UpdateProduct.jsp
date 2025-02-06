<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Updated</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        margin: 0;
        padding: 0;
        background: url(./added.jpg);
         background-repeat: no-repeat;
  		background-size: 200vh;
    	background-position: center;
    	text-align: center;
		background-size: cover;
		height: 100vh;
    }
    .container {
        width: 50%;
        background: rgba(255, 255, 255, 0.8);
        padding: 20px;
        margin: 50px auto;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }
    h1 {
        color: #333;
    }
    a {
        display: block;
        text-decoration: none;
        color: white;
        background: #007bff;
        padding: 10px;
        margin: 10px auto;
        width: 200px;
        border-radius: 5px;
        transition: 0.3s;
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
            AdminBean abean = (AdminBean) session.getAttribute("abean");
            String msg = (String) request.getAttribute("msg");
            out.println("Hello " + abean.getaFname() + "<br><br>");
            out.println(msg + "<br><br>");
        %>
        </h1>
        <a href="AddProduct.html">Add Product</a>
        <a href="view1">View Product</a>
        <a href="logout">Logout</a>
    </div>
</body>
</html>
