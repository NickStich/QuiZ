<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Stich
  Date: 5/14/2020
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Top</title>
</head>
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
<body>
<div id="container">
    <form method="post">

        <table border="2">
            <h1>
                <tr>
                    <td>NAME</td>
                    <td>SCORE</td>
                </tr>
            </h1>
            <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/quiz";
                    String username = "root";
                    String password = "Colea4895";
                    String query = "SELECT USERNAME, SCORE FROM quiz.users\n ORDER BY SCORE DESC;";
                    Connection conn = DriverManager.getConnection(url, username, password);
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery(query);
                    while (rs.next()) {
            %>

            <tr>
                <td><%=rs.getString("USERNAME") %>
                </td>
                <td><%=rs.getLong("SCORE") %>
                </td>
            </tr>

            <%
                }
            %>
        </table>

        <%
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </form>
    <h2>
        <a href="http://localhost:8080/Quiz_war_exploded/"> To main page </a> <br>
    </h2>
</div>
</body>
</html>
