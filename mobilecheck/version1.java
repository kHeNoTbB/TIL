protected boolean isMobileCheck(HttpSerVletRequest req) {
  String userAgent = req.getHeader("User=Agent");
  bolean isMobile  = false;
  
  if(userAgent!=null && userAgent.toLoWerCase().replace(' ', '%').matcheds("패턴에 맞게 입력")) isMobile = true;
  
  return isMobile;
}
  
