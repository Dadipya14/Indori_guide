<%
 response.addHeader("Pragma", "no-cache");
 response.addHeader("Cache-control", "no-store");
 
 String value=(String)session.getAttribute("USERAUTH");
 if(value==null)
 {
  response.sendRedirect("home.jsp");
 }
 if(session==null)
 {
  response.sendRedirect("home.jsp");
 }
%>












