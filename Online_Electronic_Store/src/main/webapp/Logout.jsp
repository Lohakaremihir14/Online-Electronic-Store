<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Logout</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: url('./logout.jpg');
        background-repeat: no-repeat;
  			background-size: 200vh;
    		background-position: center;
    		text-align: center;
			background-size: cover;
		   	height: 100vh;
    }
    .container {
        text-align: center;
        background: rgba(255, 255, 255, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
    h1 {
        color: #333;
    }
    a {
        display: inline-block;
        padding: 10px 20px;
        text-decoration: none;
        background: #007bff;
        color: white;
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
                session.invalidate();
                out.println("Logged-OUT Successfully<br><br>");
            %>
        </h1>
        <a href="index.html">Login Page</a>
    </div>
</body>
</html>
