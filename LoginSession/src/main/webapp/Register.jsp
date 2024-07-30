<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link href='./access/css/Styles.css' rel='stylesheet' type='text/css'>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="login-body">
    <div class="login-form">
        <div class="col-xs-12" style="height:40px;"></div>
        <h2 class="text-center mb-4 text-white">REGISTER</h2>
        <div class="col-xs-12" style="height:20px;"></div>
        <form action="Register" method="post"> 
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Email" name="email" > 
                <p class="text-center text-white"> Email</p>
            </div>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Name" name="name" > 
                <p class="text-center text-white"> Name</p>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Password" name="password" > 
                <p class="text-center text-white"> Password<br></p>
            </div>
            <div class="form-group">
                <% 
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null && !errorMessage.isEmpty()) {
                %>
                <p class="text-center text-white"><%= errorMessage %></p>
                <% } %>
            </div>
            <div class="lb">
                <button type="submit" class=" lb btn btn-outline-secondary text-white text-center">Register</button>
            </div>
        </form>
    </div>
</body>
</html>
