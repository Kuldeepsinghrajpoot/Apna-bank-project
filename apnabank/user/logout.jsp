<%@ page import="java.util.*"%>
<% session.invalidate();%>
  <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  response.sendRedirect("login.jsp");
  %> 