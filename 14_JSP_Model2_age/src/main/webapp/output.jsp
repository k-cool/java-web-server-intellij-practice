<%@ page import="com.sw.age.Bean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Bean b = (Bean) request.getAttribute("bean");
%>

<%= b.getAge()%> 년생 이시군요, 당신의 나이는 <%=b.getBirth()%>살 입니다.

</body>
</html>
