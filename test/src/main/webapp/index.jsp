<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
        <%--

            점심값 뿜빠이.(카드깡)

            - 낸사람: sw
            - 같이 먹은사람: 4명
            - 결제금액: 44,000원

            - 결과창
                4명이서 44000원 나왔네요.
                한사람 당 11,000원 sw에게 카뱅송금 하세요!

        --%>


        <form action="${pageContext.request.contextPath}/hello-servlet">
            <div>낸사람</div>

            <div>같이 먹은사람: <input type="text" name="cnt">명</div>
            <div>결제금액: <input type="text" name="money">원</div>

            <div>
                <button>계산</button>
            </div>
        </form>
</body>
</html>