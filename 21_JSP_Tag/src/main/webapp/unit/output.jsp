<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>단위 변환기: 변환결과</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/unit/styles/output.css">
</head>

<body>
<div class="card">
    <div>변환결과</div>

    <div>
        <div>${rb.fromStr}</div>

        <div>⬇</div>

        <div>${rb.toStr}</div>

        <button onclick="history.back()">돌아가기</button>
    </div>
</div>


</body>
</html>