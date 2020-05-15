<%--
  Created by IntelliJ IDEA.
  User: Stich
  Date: 5/13/2020
  Time: 5:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Quiz</title>

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

        header {
            text-align: center;
            border-bottom: #fff dashed 1px;
        }

        header h1,
        header p {
            margin: 0;
            padding: 0;
        }

        header p {
            margin-top: 5px;
            color: #000;
        }

        section {
            min-height: 400px;
        }

        footer {
            text-align: center;
        }

        input[type="submit"] {
            background: #49d2f0;
            border: 0;
            color: white;
            padding: 10px 15px;
            cursor: pointer;
        }

        #results h3 {
            background: #f06226;
            padding: 10px;
            margin: 10px 0;
        }

        #results span {
            color: #000;
            font-weight: bold;
        }
    </style>

</head>
<body>
<div id="container">
    <header>
        <h1>Simple Programming Languages Quiz</h1>
        <p>Test your knowledge in <strong>Programming Languages</strong></p>
        <p>2 points for each correct answer!</p>
    </header>
    <section>
        <%--        <div id="results"></div>--%>
        <%--        <form name="quizForm" onsubmit="return submitAnswers()">  results from JS File --%>
     <form method="post" action="quiz">
        <h3>1. In which HTML element do we put in JavaScript code?</h3>
        <input type="radio" name="q1" value="a" id="q1a">a. &lt;js&gt;<br>
        <input type="radio" name="q1" value="b" id="q1b">b. &lt;script&gt;<br>
        <input type="radio" name="q1" value="c" id="q1c">c. &lt;body&gt;<br>
        <input type="radio" name="q1" value="d" id="q1d">d. &lt;link&gt;<br>

        <br><br>
        <h3>2. Which data structure uses LIFO?</h3>
        <input type="radio" name="q2" value="a" id="q2a">a. Array<br>
        <input type="radio" name="q2" value="b" id="q2b">b. Int<br>
        <input type="radio" name="q2" value="c" id="q2c">c. Stack<br>
        <input type="radio" name="q2" value="d" id="q2d">d. Queues<br>

        <br><br>
        <h3>3. How do you create a variable with the floating number 2.8?</h3>
        <input type="radio" name="q3" value="a" id="q3a">a. x = 2.8f<br>
        <input type="radio" name="q3" value="b" id="q3b">b. float x = 2.8f<br>
        <input type="radio" name="q3" value="c" id="q3c">c. int x = 2.8f<br>
        <input type="radio" name="q3" value="d" id="q3d">d. byte x = 2.8f<br>

        <br><br>
        <h3>4. JavaScript is a version of Java.</h3>
        <input type="radio" name="q4" value="a" id="q4a">a. true<br>
        <input type="radio" name="q4" value="b" id="q4b">b. false<br>

        <br><br>
        <h3>5. What does HTML stand for?</h3>
        <input type="radio" name="q5" value="a" id="q5a">a. Home Tool Markup Language<br>
        <input type="radio" name="q5" value="b" id="q5b">b. Hyper Text Markup Language<br>
        <input type="radio" name="q5" value="c" id="q5c">c. Hyperlinks and Text Markup Language<br>

        <br><br>
        <input type="submit" value="Submit Answers">
     </form>
    </section>
</div>
</body>
</html>
