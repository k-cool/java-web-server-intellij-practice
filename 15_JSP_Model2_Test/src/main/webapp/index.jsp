<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>

<%--

    Test
       - Model2 방식 (MVC 패턴) 방식으로 구현
       - 값 뭉쳐 보내기
       - 결과페이지

회원 정보 확인 -
      이름 : ㅇㅇ
      나이 : ㅇㅇ
      성별 : ㅇㅇ
      관심사 : ㅇㅇ / ㅇㅇ / ㅇㅇ

--%>


<body>
<form action="${pageContext.request.contextPath}/HomeController" method="post">
    <div>관심사 리스트</div>
    <div>
        <label>
            회원 이름: <input name="name" type="text">
        </label>
    </div>

    <div>
        <label>
            나이: <input name="age" type="text">
        </label>
    </div>

    <div>
        성별:
        <label>
            <input name="gender" type="radio">남
        </label>
        <label>
            <input name="gender" type="radio">여
        </label>
    </div>

    <div>
        <label>
            <input name="hobby" type="checkbox" value="ex">운동
        </label>
        <label>
            <input name="hobby" type="checkbox" value="co">요리
        </label>
        <label>
            <input name="hobby" type="checkbox" value="de">개발
        </label>
    </div>

    <div>
        <button>확인</button>
    </div>
</form>
</body>
</html>