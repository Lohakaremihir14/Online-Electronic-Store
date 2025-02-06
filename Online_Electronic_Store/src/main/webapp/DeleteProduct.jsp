<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="ISO-8859-1">
<title>Delete</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        margin: 50px;
        background: url('./delete.jpg');
        background-repeat: no-repeat;
  			background-size: 200vh;
    		background-position: center;
    		text-align: center;
			background-size: cover;
		   	height: 100vh;
    }
    h1 {
        color: #333;
    }
    a {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        text-decoration: none;
        color: white;
        background-color: #007bff;
        border-radius: 5px;
    }
    a:hover {
        background-color: #0056b3;
    }
    .container {
        background: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        display: inline-block;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>
            <%
                AdminBean abean = (AdminBean) session.getAttribute("abean");
                ProductBean pbean = (ProductBean) request.getAttribute("pbean");
                out.println("Hello " + abean.getaFname() + 
                            ", you have successfully removed " + 
                            pbean.getpName() + " from store.<br><br>");
            %>
        </h1>
        <a href="AddProduct.html">Add Product</a> <br>
        <a href="view1">View Product</a> <br>
        <a href="logout">Logout</a> <br>
    </div>
</body>
</html>
