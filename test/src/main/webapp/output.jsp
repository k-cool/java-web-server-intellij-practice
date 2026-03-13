<%@ page import="com.sw.test.ResultVO" %><%--
  Created by IntelliJ IDEA.
  User: soldesk
  Date: 2026-03-12
  Time: 오후 5:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<%

  ResultVO rvo = (ResultVO) request.getAttribute("rvo");

%>

<body>
        <h1><%= rvo.getCnt()%>명이서 <%=rvo.getMoney()%>원 나왔네요.</h1>
        <h1>한사람 당<%= rvo.getPerCost()%>원 sw에게 카뱅송금하세요!</h1>
</body>
</html>
