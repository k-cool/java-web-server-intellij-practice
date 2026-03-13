<%@ page import="com.sw.bmi.BmiDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BMI 검사결과</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/result.css">
</head>

<%

    System.out.println("hello1");

    BmiDTO bmiDto = (BmiDTO) request.getAttribute("bmiDto");
%>

<body>
<div>
    <div>
        <h2>BMI 결과</h2>
    </div>

    <div class="container">
        <div>
            <img class="img" src='imgs/<%=bmiDto.getPic() %>'>
        </div>


        <div class="items">
            <div class="item1">이름</div>
            <div class="item2">
                <div><%=bmiDto.getName() %>
                </div>
            </div>
        </div>

        <div class="items">
            <div class="item1">키(CM)</div>
            <div class="item2">
                <div><%=bmiDto.getHeight() %>
                </div>
            </div>
        </div>

        <div class="items">
            <div class="item1">체중(KG)</div>
            <div class="item2">
                <div><%=bmiDto.getWeight() %>
                </div>
            </div>
        </div>

        <div class="items">
            <div class="item1">BMI</div>
            <div class="item2">
                <div><%=bmiDto.getBmi() %>
                </div>
            </div>
        </div>

        <div class="items">
            <div class="item1">결과</div>
            <div class="item2">
                <div><%=bmiDto.getStatus() %>
                </div>
            </div>
        </div>

        <div class="btnWrapper">
            <button onclick="history.back()">다시하기</button>
        </div>
    </div>


</div>

</body>
</html>
