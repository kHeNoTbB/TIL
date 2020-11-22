<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 유효성체크 
사용자가 폼에 입력한 데이터가 유효해야만 이를 서버에서 정상 처리할 수 있기 때문에
서버로 보내기 전에 입력된 데이터가 유효한지를 판단하여
유효하지 않으면 사용자가 다시 데이터를 입력하도록 유도한다.

이러한 작업은 html이나 jsp로 불가능하고, 자바스크립트로만 가능하다.
-->

<script type="text/javascript">
	function check() {
		if(document.frm.id.value == "") {
			alert("아이디 입력해라");
		} else if(document.frm.pw.value=="") {
			alert("비밀번호 입력해라");
		}
		else {
			frm.submit();
		}
	}

</script>


<title>Insert title here</title>
</head>
<body>
	<form action="testServlet03" name="frm">
		아이디 : <input type="text" name="id"><br />
		비밀번호 : <input type="text" name="pw"><br />
		
	<!-- 유효성 검사 후 보내주기 위해서 type을 submit이 아닌 button으로 했다. -->
	<input type="button" value="로그인" onclick="check()">
	</form>
</body>
</html>