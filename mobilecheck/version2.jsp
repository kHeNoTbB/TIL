<%
String mobileCheck = "";
  String userAgent = request.getHeader("user-agent");
  System.out.println("userAgent"+userAgent);
  String[] browser = {"iPhone", "iPod","Android"};
   for (int i = 0; i < browser.length; i++) {
    if(userAgent.matches(".*"+browser[i]+".*")){
     mobileCheck = "1";
     break;
    }
   }
%>
