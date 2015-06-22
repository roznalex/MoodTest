<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="header"/>
    <title>Mood Test</title>
</head>

<body>
<div class="jumbotron">
    <div class="starter-template">
        <h1 align="center">Discover your mood</h1>
        <p class="lead" align="center">Monitor your moods on the Goldberg scale and compare your results to others</p>
        <form class="form-inline" method="post" action="/app/test">
            <input class="btn btn-default btn-lg btn-block" type="submit" value="Get started!"> </input>
        </form>
    </div>
</body>
</html>