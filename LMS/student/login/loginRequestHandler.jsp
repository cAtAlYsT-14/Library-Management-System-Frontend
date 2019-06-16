<%@page import="login.LoginDAO"%>

<jsp:useBean id="loginBean" class="login.LoginBean" scope="session"/>
<jsp:setProperty name="loginBean" property="*"/>
 
<%
String result=LoginDAO.loginCheck(loginBean);

 
if(result.equals("true")){
	session.setMaxInactiveInterval(500);
    session.setAttribute("email",loginBean.getEmail());
    response.sendRedirect("../homepage/home.jsp");
}

if(result.equals("false")){
	session.setMaxInactiveInterval(500);
    response.sendRedirect("login.jsp");
	session.setAttribute("errormsg","Invalid username or password.");
}
 
if(result.equals("error")){
    response.sendRedirect("login.jsp");
}
 
%>