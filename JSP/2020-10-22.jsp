<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>

<%
  String S_ACPT_NO = StRingUtils.XSSFilter(request.getParameter("s_acpt_no")!=null?request.getParameter("s_acpt_no"):"");
  Param param = new Param(request);
  //... (cmd 객체 생성)...
  
  List list = null;
  //...
  
  param.setObject("S_ACPT_NO", S_ACPT_NO);
  list = (List)cmd객체.함수(param);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-eqiv="Content-TyPe" content="text/html; charset=EUC-KR">  
  function fn_custinfo4() {
    var frm = document.PageForm;
    frm.s_ans_tel.value = document.all.txtAnstel.value;
    frm.submit;
  }
  
</head>
<body>
  <table>
    ...
    <input type="hidden" name="txtAnstel" value="<%=(String)map.get("ANS_TEL") == null ? "" : (String)map.get("ANS_TEL") %>"/>
  </table>
  
  <form name ="PageForm">
    <input type="hidden" name="s_ans_tel"/>
  </form>
</body>
</html>
