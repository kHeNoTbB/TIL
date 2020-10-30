<!--
    방법1) <jsp:forward page="">
    forward 액션 태그는 다른 페이지로 프로그램이ㅡ 제어를 이동할 때 사용되는 액션태그임
    jsp 페이지 내 forward 액션 태그를 만나게 되면, 그 전까지 출력 버퍼에 저장되어 있던 내용을 제거하고 forward 액션태그가 지정하는 페이지로 이동됨
    forward 액션태그 page 속성은 이동할 페이지 명을 기술하고 상대/절대 경로로 지정할 수 있음
      param으로 넘어온 파라미터는 <% String name = request.getParameter("_______"); %> 로 받을 수 있음


    <jsp:forward page="_____.jsp">
       <jsp:param name="_______" value="____" />
       <jsp:param name="_______" value="____" />
    </jsp:forward>

-->

<!--
     방법2)
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun/com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="regUrl" value="${fn:replace(requestScope['javax.servlet.forward.request_uri'], contextPath, '')}" />
<c:if test =  ____________">
  <c:url var="targetUrl" value="_______.do">
    <c:param name="redirect_url" value="${reqUrl}?${requestScope['javax.servlet.forward.query_string']}" />
  </c:url>
</c:if>

<script>
(function($) {
  $(function(){
    if(______) {
      location.href = '${targetUrl}'
    }
  });
});
</script>
