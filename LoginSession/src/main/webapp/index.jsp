<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href='./access/css/Styles.css' rel='stylesheet' type='text/css'>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body class="login-body">
    <div class="login-form">
        <div class="col-xs-12" style="height:40px;"></div>
        <h2 class="text-center mb-4 text-white">LOGIN</h2>
        <p class="text-center text-secondary">Please enter your login and password!</p>
        <div class="col-xs-12" style="height:20px;"></div>
        <form action="Login" method="post"> 
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Email" name="email" > 
                <p class="text-center text-white"> Email</p>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Password" name="password" > 
                <p class="text-center text-white"> Password<br></p>
                <div class="col-xs-12" style="height:20px;"></div>
                <%
            if (request.getAttribute("errorMessage") != null && !request.getAttribute("errorMessage").equals("")) {
                out.println("<div class='errorMessage' style='text-align: center; color: white;'>" + request.getAttribute("errorMessage") + "</div>");
            }
       			%>
                <p class="text-center text-white"><a href="Register" class="text-secondary">Create New Account</a></p>

            </div>
            <div class="lb">
                <button type="submit" class=" lb btn btn-outline-secondary text-white text-center">Login</button>
            </div>
        </form>
        <div class="text-center">
            <div class="social-icons">
                <a href="#" class="text-white px-2"><i class="fab fa-facebook"></i></a>
                <a href="#" class="text-white px-2"><i class="bi bi-twitter-x"></i></a>
                <a href="#" class="text-white px-2"><i class="fab fa-google"></i></a>
            </div>
            <div class="col-xs-12" style="height:50px;"></div>
            <div class="sign-up-text">
                <p class="text-center text-white">Don't have an account? <a href="Register" class="text-secondary">Sign up</a></p>
            </div>
        </div>
    </div>
</body>
</html>
