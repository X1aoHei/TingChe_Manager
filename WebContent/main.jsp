<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	<p>欢迎<%=session.getAttribute("username") %>光临！！！！</p>
	<a href="QueryCheWei.jsp">查询空闲车位</a>
	<a href="Querymanglu.jsp">查询即将空闲的车位</a>
	<a href="cal.jsp?id=<%=session.getAttribute("username")%>">计算费用</a>
</body>
</html>