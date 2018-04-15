<%@page import="Bean.Fee" %>
<%@page import="Bpo.QueryFee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计算费用</title>
</head>
<body>
	<%
	String username = request.getParameter("id");
	QueryFee a = new QueryFee();
	Fee f = a.query(username);
	%>
	<form action="" method="post">
		<table>
			<tr>
				<td>用户id</td>
				<td>车位号</td>
				<td>费用</td>
			</tr>
			<tr>
				<td><%=f.getId() %></td>
				<td><%=f.getCheweihao() %></td>
				<td><%=f.getFee() %></td>
			</tr>
		</table>
	</form>
</body>
</html>