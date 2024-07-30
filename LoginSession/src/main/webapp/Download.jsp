<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Download</title>
    <link href='./access/css/Styles.css' rel='stylesheet' type='text/css'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <% 
        if (session == null || session.getAttribute("name") == null || session.getAttribute("name").equals("")){ 
            response.sendRedirect("index.jsp"); 
            return;
        }
    %>
    <table>
    	<tr>
            <th>#</th>
            <th>File Name</th>
            <th>Preview</th>
            <th>Download</th>
        </tr>
    </table>

    <table>

        <tr>
            <td><b>1.</b></td>
            <td>Apples</td>
            <td><img src='./access/images/apples.jpg' style='width: 200px; height: 100%;'></td>
            <td><a href='<%= request.getContextPath() %>/access/images/apples.jpg' class='btn btn-primary' download>Download</a></td>
        </tr>

        <tr>
            <td><b>2.</b></td>
            <td>Oranges</td>
            <td><img src='./access/images/oranges.jpg' style='width: 200px; height: 100%;'></td>
            <td><a href='<%= request.getContextPath() %>/access/images/oranges.jpg' class='btn btn-primary' download>Download</a></td>
        </tr>

        <tr>
            <td><b>3.</b></td>
            <td>Bananas</td>
            <td><img src='./access/images/bananas.jpg' style='width: 200px; height: 100%;'></td>
            <td><a href='<%= request.getContextPath() %>/access/images/bananas.jpg' class='btn btn-primary' download>Download</a></td>
        </tr>
    </table>

    <form action='Logout' method='post' style='position: absolute; top: 10px; right: 10px;'>
        <input type='submit' value='Logout' class='btn btn-primary'> 
    </form>
</body>
</html>
