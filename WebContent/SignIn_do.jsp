<%@page import="Bpo.SignIn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	SignIn s = new SignIn();
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	boolean log = s.sign(username, password);
	if(log = true){
		session.setAttribute("username", username);
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("index.jsp");
	}
	%>
</body>
</html>