<%@ page import="com.sw.unit.ResultBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단위 변환기: 변환결과</title>
<link rel="stylesheet" href="/unit/css/output.css">
</head>

<%
	ResultBean rb= (ResultBean) request.getAttribute("rb");
%>

<body class="<%=rb.getClassName() %>">
	<div>
		<div>변환결과</div>
	
		<div>
			<div><%=rb.getFromStr() %></div>
			
			<div>⬇</div>
			
			<div><%=rb.getToStr() %></div>
			
			<button onclick="history.back()">돌아가기</button>
		</div>
	</div>


</body>
</html>