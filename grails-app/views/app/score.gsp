<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="header"/>
    <title>Scores</title>
</head>

<body>
    <div class="starter-template">
        <div class="container">
            <h2>Persons Table</h2>
            <table class="table">
                <thead>
                <tr>
                    <th>Login</th>
                    <th>Result</th>
                    <th>Mood</th>
                    <th>Test finished date</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${persons}" var="person">
                    <tr>
                        <td>${person.login}</td>
                        <td>${person.result}</td>
                        <td>${answer}</td>
                        <td>${person.lastVisit}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>