<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        padding: 50px;
        background: url(./added.jpg);
        background-repeat: no-repeat;
  		background-size: 250vh;
    	background-position: center;
    	text-align: center;
		background-size: cover;
		height: 100vh;
        
    }
    .container {
        background: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        display: inline-block;
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
        width: 250px;
        border-radius: 8px;
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
  		out.println("Mr. " + abean.getaFname() + " " + msg + "<br><br>");
  	%>
    <a href="AddProduct.html">Add Product</a>
    <a href="view1">View Product</a>
    <a href="logout">Logout</a>
</h1>
</div>
</body>
</html>
