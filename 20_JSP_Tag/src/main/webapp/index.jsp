<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<%--

    .jsp 자바 쓰는 경우

        - 값을 읽으려고 -> EL로 해결
        - 조건문, 반복문
        - 출력형식
        - 이동, 포함 -> 정품사용

    1. JSP 표준 액션 태그(정품)
        - .jsp에서 기본적으로 사용 가능
    2. jstl (사제)
        - .jsp 기본에 없다.


--%>


<body>
<jsp:include page="index2.jsp"/>
<h1>index 1 page</h1>

<%--<jsp:forward page="index2.jsp"/>--%>

</body>
</html>