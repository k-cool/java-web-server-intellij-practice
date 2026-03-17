<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="format/styles/format.css"/>

</head>
<body>
<div>
    <h1>format.jsp</h1>

    ${a}
    <hr>

    <fmt:formatNumber value="${a}"/>
    <br>
    <fmt:formatNumber value="${a}" type="currency" currencySymbol="$"/>
    <hr>
    <fmt:formatNumber value="${b}"/>
    <br>
    <fmt:formatNumber value="${b}" type="percent"/>
    <hr>
    <fmt:formatNumber value="${b}" pattern="0.00"/>
    <br>
    <fmt:formatNumber value="${b}" pattern="0.00000"/>
    <br>
    <fmt:formatNumber value="${b}" pattern="#.#####"/>
    <br>
    <fmt:formatNumber value="${b}" pattern="0,00.000"/>
    <br>
    <fmt:formatNumber value="${b}" pattern="#,##.###"/>
    <br>
    <fmt:formatNumber value="${c}" pattern="#,##.00"/>
    <hr>
    ${date}
    <br>
    <fmt:formatDate value="${date}"/>
    <br>
    <fmt:formatDate value="${date}" type="date" dateStyle="short"/>
    <br>
    <fmt:formatDate value="${date}" type="date" dateStyle="long"/>
    <hr>
    <fmt:formatDate value="${date}" type="time" timeStyle="short"/>
    <br>
    <fmt:formatDate value="${date}" type="time" timeStyle="long"/>
    <br>
    <fmt:formatDate value="${date}" type="both" dateStyle="long" timeStyle="short"/>
    <br>
    <fmt:formatDate value="${date}" pattern="yyyy-MM-dd / hh:mm"/>

    <hr>
    <div class="fmt-container">
        <c:forEach var="snack" items="${snackList}" varStatus="st">
            <div class="fmt-row">
                <div class="fmt-item">${st.count}</div>
                <div class="fmt-item">${snack.name}</div>
                <div class="fmt-item">
                        <%--<fmt:formatNumber value="${snack.price}" type="currency"/>--%>
                    <fmt:formatNumber value="${snack.price}" pattern="₩#,###.00"/>
                </div>
                <div class="fmt-item">
                    <fmt:formatDate value="${snack.date}" pattern="yyyy-MM-dd"/>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
