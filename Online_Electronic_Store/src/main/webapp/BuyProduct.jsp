<%@page import="com.pack2.ProductBean"%>
<%@page import="com.pack2.CustomerBean"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Buy Product</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Belanosima:wght@400;600;700&family=Space+Grotesk:wght@300..700&display=swap');
</style>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
         background: url(./buy1.jpg);
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
        margin: auto;
        background: rgba(255, 255, 255, 0.8);

        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        margin-top: 50px;
        text-align: center;
    }
    h2 {
        color: #333;
    }
    input[type="text"], input[type="number"] {
        width: 10%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background: #28a745;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 5px;
    }
    input[type="submit"]:hover {
        background: #218838;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>
            <% CustomerBean cbean = (CustomerBean) session.getAttribute("cbean"); %>
            <% ProductBean pbean = (ProductBean) request.getAttribute("pbean"); %>
            <i>Hello <%= cbean.getcFname() %>! Here are the details of your selected product</i>
        </h2>
        <h3>
        <form action="pqnty" method="post">
            <label>Product Code:</label>
            <input type="text" name="pcode" value="<%= pbean.getpCode() %>" readonly><br>
            <label>Product Name:</label>
            <input type="text" name="pname" value="<%= pbean.getpName() %>" readonly><br>
            <label>Product Company:</label>
            <input type="text" name="pcom" value="<%= pbean.getpCompany() %>" readonly><br>
            <label>Product Price:  </label>
            <input type="text" name="price" value="<%= pbean.getpPrice() %>" readonly><br>
            <label>Product Quantity:</label>
            <input type="text" name="qty" value="<%= pbean.getpQuantity() %>" readonly><br>
            <label>Required Quantity:</label>
            <input type="number" name="reqQ" required><br>
            <input type="hidden" name="pqnty" value="<%= pbean.getpQuantity() %>">
            <input type="submit" value="Buy">
        </form>
        </h3>
    </div>
</body>
</html>
