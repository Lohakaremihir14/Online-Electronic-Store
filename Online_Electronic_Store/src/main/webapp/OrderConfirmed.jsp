<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.util.Random"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.pack2.ProductBean"%>
<%@page import="com.pack2.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Belanosima:wght@400;600;700&family=Space+Grotesk:wght@300..700&display=swap');
</style>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        padding: 50px;
        margin: 0;
         background: url(./dilevery.png);
            background-repeat: no-repeat;
  			background-size: 250vh;
    		background-position: center;
    		text-align: center;
			background-size: cover;
		   	height: 100vh;
		   	font-family: "Space Grotesk", serif;
    }
    .container {
        background: rgba(255, 255, 255, 0.8);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        display: inline-block;
        max-width: 500px;
        width: 90%;
    }
    h2 {
        color: #333;
        font-size: 24px;
    }
    a {
        display: inline-block;
        margin: 10px;
        padding: 12px 25px;
        text-decoration: none;
        color: white;
        background-color: #007BFF;
        border-radius: 5px;
        transition: 0.3s;
        font-size: 16px;
        font-weight: bold;
    }
    a:hover {
        background-color: #0056b3;
    }
    .message {
        font-size: 18px;
        color: #555;
        margin-bottom: 20px;
    }
    .top{
    	font-size: 14px;
    	display: flex;
    	justify-content: space-between;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>
        <%
        CustomerBean cb=(CustomerBean)session.getAttribute("cbean");
        ProductBean pb=(ProductBean)request.getAttribute("pbean");    
        int rqnty=(int)request.getAttribute("rqnty"); 
        int total=Integer.parseInt(pb.getpPrice())*rqnty;
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
        %>
        Hello <%= cb.getcFname() %>!!!
        </h2>
        <div class="message">
        <div class="top">
        	<div >Order Id :<%out.println("<b> "+new Random().nextLong(1000000000)+"</b>"); %></div>
        	<div ><% out.println("Date: <b>"+LocalDate.now()+"</b><br><br>"); 
         	out.println("Time: <b>"+LocalTime.now().format(formatter)+"</b>");%><br><br></div>
        </div>
        
            Your Product Name: <b><%= pb.getpName() %></b><br><br>
            Your Product Price: <b><%= pb.getpPrice() %></b><br><br>
            You have been charged <% out.println("<b>"+total+"</b> for <b>"+rqnty+"</b> product.");%><br><br>
            <marquee> Your order has been placed Successfully!!</marquee><br><br>
        </div>
        <a href="view2">View Product</a> <br>
        <a href="logout">Logout</a>
    </div>
</body>
</html>
