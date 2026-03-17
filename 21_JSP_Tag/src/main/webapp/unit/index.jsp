<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>단위 변환기</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/unit/styles/unit.css">
    <script src="${pageContext.request.contextPath}/unit/js/unit.js" defer></script>

</head>
<body>

<div>

    <form id="form" class="card" action="unit" method="POST">
        <div>변환할 값</div>

        <input id="numInput" name="num" type="number">

        <div class="sub-title">단위</div>

        <select id="modeSelect" name="mode">
            <option value="">단위를 선택하세요</option>
            <option value="cmToInch">cm -> inch</option>
            <option value="squareToPyeoung">㎡ -> 평</option>
            <option value="celToFah">℃ -> ℉</option>
            <option value="kmToMile">km/h -> mi/h</option>
        </select>

        <button id="btn" onclick="">변환하기</button>
    </form>
</div>


</body>
</html>