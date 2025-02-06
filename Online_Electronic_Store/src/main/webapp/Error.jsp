<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
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
	mark{
		background-color: red;
	}
	
	</style>
	<center><h1>
	<%
		String data=(String)request.getAttribute("msg");
		/* response.sendError(HttpServletResponse.SC_BAD_REQUEST,data); */  // If you want to terminate the request or you dont want admin to access after this you can use this statement.
	%>
	<mark><%=data%></mark> <br><br>
	<a href="AddProduct.html">Add Product</a><br><br>
    <a href="view1">View Product</a><br><br>
    <a href="logout">Logout</a><br><br>
</body>
</html>