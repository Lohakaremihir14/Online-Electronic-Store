<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
         background: url(./view.png);
            background-repeat: no-repeat;
  			background-size: 250vh;
    		background-position: center;
    		text-align: center;
			background-size: cover;
		   	height: 100vh;
    }
    .container {
       	color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        max-width: 800px;
        margin:auto;
    }
    h3 {
        color: white;
        margin-bottom: 20px;
        
    }
    table {
        width: 100%;
    }
    th, td {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        text-align: center;
    }
    a {
        text-decoration: none;
        color: #007bff;
    }
    a:hover {
        text-decoration: underline;
    }
    p{
    	color:white;
    }
</style>
</head>
<body>
<div class="container">
    <h3 class="text-center">Product Details</h3>
    <div class="text-center">
        <%
            AdminBean abean = (AdminBean) session.getAttribute("abean");
            ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("ProductsList");
        %>
        <p><strong>Hello, <%= abean.getaFname() %>!!! These are available product details:</strong></p>
        
        <% if (al == null || al.size() == 0) { %>
            <p class="text-danger">Products are NOT available!</p>
        <% } else { %>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Company</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% Iterator<ProductBean> i = al.iterator();
                    while (i.hasNext()) {
                        ProductBean pb = i.next(); %>
                        <tr>
                            <td><%= pb.getpCode() %></td>
                            <td><%= pb.getpName() %></td>
                            <td><%= pb.getpCompany() %></td>
                            <td><%= pb.getpPrice() %></td>
                            <td><%= pb.getpQuantity() %></td>
                            <td>
                                <a href='edit?pcode=<%= pb.getpCode() %>' class="btn btn-warning btn-sm">Edit</a>
                                <a href='delete?pcode=<%= pb.getpCode() %>' class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } %>
        
        <a href="logout" class="btn btn-secondary">Logout</a>
    </div>
</div>
</body>
</html>