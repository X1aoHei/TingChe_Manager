<%@page import="Bpo.QueryCheWei"%>
<%@page import="java.util.*"%>
<%@page import="Bean.CheWei"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查找空闲车位</title>
</head>
<body>
	<p>
		欢迎<%=session.getAttribute("username")%>光临！！！！
	</p>
	<form action="" method="post">
		<table>
			<tr>
				<td>车位号</td>
				<td>是否被占用（0表示空闲车位/1表示已被占用车位）</td>
				<td>停车</td>
			</tr>

			<%
				QueryCheWei car = new QueryCheWei();
				List<CheWei> list = car.queryzero();
				for (int i = 0; i < list.size(); i++) {
					CheWei car0 = list.get(i);
			%>
			<tr>
				<td><%=car0.getCheweihao()%></td>
				<td><%=car0.getZhanyong()%></td>
				<td><a href="TingChe.jsp?cheweihao = <%=car0.getCheweihao()%>&&id = <%=session.getAttribute("username")%>">占用</a></td>
			</tr>
			<%
				}
			%>

		</table>
	</form>

</body>
</html>