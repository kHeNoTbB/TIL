<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
	String id = "admin";
	String pw = "admin";
	
	if(id.equals(request.getParameter("id")) && pw.equals(request.getParameter("pw"))) {
		
		//sendRedirect() 메소드로 페이지를 이동하면서 데이터를 전송하기 위해 파라미터 값을 이동할 페이지 뒤에 쿼리 스트링 형태로 덧붙인다.
		response.sendRedirect("result04_3.jsp?id="+id);
	}
	else response.sendRedirect("result04_1.jsp");

%>
<title>Insert title here</title>
</head>
<body>

</body>
</html>