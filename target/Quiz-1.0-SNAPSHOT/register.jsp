<%--
  Created by IntelliJ IDEA.
  User: Stich
  Date: 5/14/2020
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            background: #f0e11a;
            color: white;
            font-family: arial;
            font-size: 14px;
        }

        #container {
            width: 60%;
            background: #199fdb;
            margin: 20px auto;
            overflow: auto;
            padding: 25px;
        }
    </style>
</head>
<body>
<div id="container">
    <form method="post" action="register">
        <h1>Please insert your name to record the score:</h1>
        <h2>
            <input type="text" name="username">
            <input type="submit" value="Register">
        </h2>
    </form>
</div>
</body>
</html>
