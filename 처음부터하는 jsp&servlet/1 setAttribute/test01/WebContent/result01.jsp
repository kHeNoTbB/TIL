<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% int num1 = (int)request.getAttribute("num1"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=num1 %>
	
	<!-- request 객체에 저장된 속성값을 얻어와 출력함 -->
	${num1 }+${num2 }=${add }
</body>
</html>