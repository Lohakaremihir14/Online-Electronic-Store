<%@page import="java.util.Iterator"%>
<%@page import="com.pack2.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack2.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>            
<head>
<meta charset="ISO-8859-1">
<title>Buy</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        background: url(./buy.png);
            background-repeat: no-repeat;
  			background-size: 250vh;
    		background-position: center;
    		text-align: center;
			background-size: cover;
		   	height: 100vh;
		   	font-family: "Space Grotesk", serif;
        
    }
    h2 {
        color: #333;
        
    }
    .container {
       width: 60%;
       background: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        justify-content: center;
    justify-items: center;
    align-items: center;
    align-content: center;
    margin:10% auto;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 10px;
        text-align: center;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    a {
        text-decoration: none;
        color: #007BFF;
    }
    a:hover {
        text-decoration: underline;
    }
    .logout {
        display: block;
        margin-top: 20px;
        padding: 10px;
        background: #ff4d4d;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
    .logout:hover {
        background: #cc0000;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>
            <%
                CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
                ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("ProductsList");
                out.println("<i>Hello " + cbean.getcFname() + "!!!</i><br><br>");
            %>
        </h2>
        <%
            if (al.size() == 0) {
                out.println("<p>Products are NOT available!!!</p>");
            } else {
        %>
        <table>
            <tr>
                <th>Code</th>
                <th>Name</th>
                <th>Company</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>
            <%
                Iterator<ProductBean> i = al.iterator();
                while (i.hasNext()) {
                    ProductBean pb = i.next();
            %>
            <tr>
                <td><%= pb.getpCode() %></td>
                <td><%= pb.getpName() %></td>
                <td><%= pb.getpCompany() %></td>
                <td><%= pb.getpPrice() %></td>
                <td><%= pb.getpQuantity() %></td>
                <td><a href='buy?pcode=<%= pb.getpCode() %>'>Buy</a></td>
            </tr>
            <% } %>
        </table>
        <% } %>
        <a class="logout" href="logout">Logout</a>
    </div>
</body>
</html>
