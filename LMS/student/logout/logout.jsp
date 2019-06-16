<%
session.invalidate();
session.setMaxInactiveInterval(0);
response.sendRedirect("../../home/homepage.jsp");
%>