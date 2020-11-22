<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 19세 미만이면 페이지 이동이 불가능하고,
	 20세 이상이면 result05_3.jsp로 이동함 -->
<%
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age<19) {
		//redirect하면, 두번 왔다갔다하면서 result05_1.jsp를 던져주기 때문에, url이 변경된다.
		response.sendRedirect("result05_1.jsp");
	} else {
		//forward하면, 내부에서 알아서 던져주기 때문에 url은 바뀌지 않는다.
		request.getRequestDispatcher("result05_3.jsp").forward(request, response);
	}

%>


<title>Insert title here</title>
</head>
<body>
	
</body>
</html>