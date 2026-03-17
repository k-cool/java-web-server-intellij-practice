<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Third Page</h1>

파라미터a: ${param.a}
<br>
파라미터b: ${param.b}
<br>
어트리뷰트: ${b}
<br>
세션: ${c}
<br>
<%-- 세션과 일반 어트리뷰트를 구분하기 위해서 스코프를 명시해주자! --%>
세션: ${sessionScope.c}
<br>
쿠키: ${cookie.d.value}

</body>
</html>
