<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- action에는 호출할 서블릿을 적는다. -->
	<form method="get" action="testServlet02">
		<input type="submit" value="get 방식 호출">
	</form>
	
	<form method="post" action="testServlet02">
		<input type="submit" value="post 방식 호출">
	</form>
</body>
</html>