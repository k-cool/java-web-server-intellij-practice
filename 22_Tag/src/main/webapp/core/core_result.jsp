<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="core/styles/core.css"/>
</head>
<body>
<h1>당신의 나이는 ${age}입니다.</h1>


<%--

    1. jsp 표준 액션태그: include
    2. jstl 사제 액션태그

--%>

<%--<c:if test="${age > 20}">--%>
<%--    <h1>안녕하세요</h1>--%>
<%--</c:if>--%>

<%--<c:if test="${age < 20}">--%>
<%--    <h1>안녕</h1>--%>
<%--</c:if>--%>

<c:choose>
    <c:when test="${age>20}">
        어서오세요~~
    </c:when>
    <c:when test="${age>10 && age<=20}">
        어서와~~
    </c:when>
    <c:otherwise>
        안녕~!
    </c:otherwise>
</c:choose>

<hr>

<c:forEach begin="1" end="3">
    <h1>ㅎㅅㅎ</h1>
</c:forEach>

<c:forEach begin="1" end="${age}" var="aa" step="1">
    ${aa}
</c:forEach>

<br>
<%--step에 음수는 안된다.--%>
<%--<c:forEach begin="${age}" end="1" var="aa" step="-1">--%>
<%--    ${aa}--%>
<%--</c:forEach>--%>

<c:forEach begin="1" end="${age}" var="aa" step="1">
    ${age - aa}
</c:forEach>

<br>

<c:forEach items="${ar}" var="i">
    ${i}
</c:forEach>

<br>

<div class="menu-container">
    <div class="menu-row">
        <div class="menu-item index">번호</div>
        <div class="menu-item name">메뉴명</div>
        <div class="menu-item price">가격</div>
    </div>

    <c:forEach items="${menus}" var="menu" varStatus="st">
        <div class="menu-row">
            <div class="menu-item index">${st.count}</div>
            <div class="menu-item name">${menu.name}</div>
            <div class="menu-item price">${menu.price}</div>
        </div>
    </c:forEach>
</div>

<hr>


<c:forEach var="i" begin="1" end="10" varStatus="st">
    ${st.end + 1 -i}
</c:forEach>

<br>

<c:forEach var="i" begin="1" end="10">
    <c:set var="v" value="${11-i}"/>
    <c:out value="${v}"/>
</c:forEach>

</body>
</html>
