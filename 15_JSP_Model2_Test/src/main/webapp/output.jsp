<%@ page import="com.sw.test.Bean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%

    Bean b = (Bean) request.getAttribute("bean");

%>

<div>
    이름: <%=b.getName()%>
</div>
<div>
    나이: <%=b.getAge()%>


</div>
<div>
    성별: <%=b.getGender()%>
</div>

<%
    String[] hobbies = b.getHobbies();

    if (hobbies == null) return;
%>

<div>관심사:
    <% for (int i = 0; i < hobbies.length; i++) { %>

    <%=hobbies[i]%>

    <%
        if (i != hobbies.length - 1) {
    %> / <%
            }
        } %>
</div>
</body>
</html>
