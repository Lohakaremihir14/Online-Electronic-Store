<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        background: url(./added.jpg);
            background-repeat: no-repeat;
  			background-size: 200vh;
    		background-position: center;
    		text-align: center;
			background-size: cover;
		   	height: 100vh;
    }
    .container {
        background: rgba(255, 255, 255, 0.8);
        width: 50%;
        margin: auto;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        margin-top: 50px;
        
    }
    h1 {
        color: #333;
    }
    input[type="text"] {
        width: 20%;
        padding: 8px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background: #28a745;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 4px;
    }
    input[type="submit"]:hover {
        background: #218838;
    }
</style>
</head>
<body>
<div class="container">
    <h1>
    <%
        AdminBean abean=(AdminBean)session.getAttribute("abean");
        ProductBean pb=(ProductBean)request.getAttribute("pbean");
        out.println("Hello " + abean.getaFname() + ","+ pb.getpName() + " product details available for edit.<br><br>");
    %>
    </h1>
    <form action="update" method="post">
        Product Price : <input type="text" name="pPrice" value="<%=pb.getpPrice()%>"><br><br>
     
        Product Quantity : <input type="text" name="pQty" value="<%=pb.getpQuantity()%>"><br><br>
        <input type="hidden" name="pCode" value="<%=pb.getpCode()%>">
        <input type="submit" value="Update">
    </form>
</div>
</body>
</html>