<%--
  Created by IntelliJ IDEA.
  User: Stich
  Date: 5/14/2020
  Time: 1:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
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
    <h1>Your score is: <%= request.getAttribute("result") %></h1>
    <h2>
        <a href="http://localhost:8080/Quiz_war_exploded/"> To main page </a> <br>
        <a href="http://localhost:8080/Quiz_war_exploded/register"> Record score </a> <br>
    </h2>
</div>
</body>
</html>
