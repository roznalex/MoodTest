<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="header">
  <title>Result</title>
    <style>
    .starter-template{
        margin-left: 8%;
    }
    </style>
</head>
<body>
    <div class="starter-template">
        <div class="form-container">
            <h4>
                <g:form controller="app" action="result">
                    <p>Your result: ${params.result}</p> <br>
                    <p>Enter your login for registration</p>
                    <g:textField name="login"></g:textField>
                    <g:hiddenField name="result" value="${params.result}"/>
                    <input type="submit" class="btn btn-default btn-sm" value="Confirm">
                </g:form>
            </h4>
        </div>
    </div>
</body>
</html>
