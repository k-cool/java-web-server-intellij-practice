<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Main</title>
    <link rel="stylesheet" href="styles/index.css">
</head>
<body>

<div class="header">
    <a href="home">SW's Place</a>
</div>
<div class="nav">
    <a href="a">
        <div>A</div>
    </a>
    <a href="b">
        <div>B</div>
    </a>
    <a href="c">
        <div>C</div>
    </a>
    <a href="bmi">
        <div>BMI</div>
    </a>
    <a href="unit">
        <div>Unit</div>
    </a>
</div>
<div class="main ${rb.className}">

    <jsp:include page="${contentPage}"/>

</div>
<div class="footer">information ...</div>

</body>
</html>