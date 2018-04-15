<%@page import="Bean.CheWei_Info"%>
<%@page import="Bpo.QueryCheWei"%>
<%@page import="java.util.*"%>
<%@page import="Bean.CheWei"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询即将空闲的车位</title>
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
				List<CheWei_Info> list = car.query();
				for (int i = 0; i < list.size(); i++) {
					CheWei_Info car1 = list.get(i);
			%>
			<tr>
				<td><%=car1.getCheweihao()%></td>
				<td><%=car1.getDatacha()%></td>
				<td><a href="TingChe.jsp?cheweihao = <%=car1.getCheweihao()%>&&id = <%=session.getAttribute("username")%>">占用</a></td>
			</tr>
			<%
				}
			%>

		</table>
	</form>
</body>
</html>