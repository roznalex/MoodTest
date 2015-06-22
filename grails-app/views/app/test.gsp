<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="header"/>
    <title>Mood Test</title>
    <style>
    .starter-template{
        margin-left: 30%;
    }
    </style>
</head>

<body>
<div class="starter-template">
    <h2>${question.question}</h2>
    <g:form controller="app" action="test">
        <g:radioGroup name="result" values="[0, 1, 2, 3, 4, 5]"
                      labels="['Not at all', 'Just a little', 'Somewhat', 'Moderately', 'Quite a lot', 'Very much']"
                      value="0">
            <p>${it.radio} ${it.label}</p>
        </g:radioGroup>
        <g:hiddenField name="questionNumber" value="${question.id}"/>
        <input class="btn btn-default btn-sm" type="submit" value="Ok">
    </g:form>
</div>
</body>
</html>