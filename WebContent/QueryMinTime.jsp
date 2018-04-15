<%@page import="Bean.TingCheInfo"%>
<%@page import="Bpo.query"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有停车信息</title>
</head>
<body>
	<form action="" method="post">
		<table>
			<tr>
				<td>用户id</td>
				<td>车牌号</td>
				<td>距离</td>
				<td>停车日期</td>
				<td>离开时间</td>
				<td>车位号</td>
				<td>费用</td>
			</tr>
			<%
				query a = new query();

				List<TingCheInfo> list = a.queryinfo();
				for (int i = 0; i < list.size(); i++) {
					TingCheInfo b = list.get(i);
			%>
			<tr>
				<td><%=b.getId()%></td>
				<td><%=b.getChepai()%></td>
				<td><%=b.getJuli()%></td>
				<td><%=b.getIn_data()%></td>
				<td><%=b.getOut_data()%></td>
				<td><%=b.getCheweihao()%></td>
				<td><%=b.getFee()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>

</body>
</html>