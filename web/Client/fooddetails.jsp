<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜品详情</title>
		<link rel="stylesheet" href="css/fooddetails.css" />
		<link rel="stylesheet" href="css/index.css" />
	</head>
	<body>
				
		<!--菜品详情区域-->
		<div id="fd_table">
			<div class="head">
			<div class="tips">
				<div class="list">
					<a href="login.jsp">会员登录</a>| <a href="Zhuche.jsp">会员注册</a>| <a
						href="quit.jsp">注销退出</a>| <a href="peisong.jsp">配送说明</a>| <a
						href="aboutus.jsp">关于我们</a>
				</div>
			</div>
			<div class="logo_banner">
				<div class="logo">
					<img src="img/1257477260.gif" />
				</div>
				<div class="banner">
					<a href="main.jsp">首页</a> <a href="mydiner.jsp">我的餐车</a> 
						<a href="myorder.jsp">我的订单</a>
						 <a href="person.jsp">用户中心</a>
						<a href="peisong.jsp">配送说明</a> 
						<a href="aboutus.jsp">关于我们</a> 
						<a href="quit.jsp">注销退出</a>
				</div>
			</div>
			<div class="littlebanner"></div>
		</div>
			<br>
			<% 
			request.setCharacterEncoding("UTF-8");
	String MenuId=request.getParameter("MenuId");
	Connection conn1=DBHelper.getConn();
	String sql1="select  MenuName,MenuRaw,MarketPrice,VIPrice,MenuDec,MenuType,MenuImg from Menu,MenuType where Menu.MenuTypeId=MenuType.MenuTypeId and MenuId=? " ;
	ResultSet rs=DBHelper.executeQuery(conn1, sql1,MenuId);
	while (rs.next()){
%>
			<table  align="center" border="1" cellspacing="0" > 
			<tr>
				<td class="fd_left">菜单名称：</td>
				<td><input type="text" value="<%=rs.getObject(1) %>"size="45"></td>
			</tr>
			<tr>
				<td class="fd_left">原&nbsp;料：</td>
				<td><input type="text" value="<%=rs.getObject(2) %>" size="45"></td>
			</tr>
			<tr>
				<td class="fd_left">市场单价：</td>
				<td><input type="text" value="<%=rs.getObject(3) %>"></td>
			</tr>
			<tr>
				<td class="fd_left">会员单价：</td>
				<td><input type="text" value="<%=rs.getObject(4) %>"></td>
			</tr>
			<tr>
				<td class="fd_left">说&nbsp;明：</td>
				<td><textarea rows="12" cols="100"><%=rs.getObject(5) %></textarea></td>
			</tr>
			<tr>
				<td class="fd_left">菜品类别：</td>
				<td><input type="text" value="<%=rs.getObject(6) %>" size="45"></td>
			</tr>
			<tr>
				<td class="fd_left">显示图片：</td>
				<td><img src="img/<%=rs.getObject(7)%>"></td>
			</tr>
			<tr>
				<td colspan="2" class="fd_center">
					<a href="main.jsp" style="width: 50px;
				text-decoration: none;
				border: 1px bisque solid;
				background-color: bisque;
				color: black">返回</a>
				</td>
			</tr>
		</table>
			
			<% 
				}
				DBHelper.closeConn(conn1);
				
			%>
			
		</div>
		<div class="foot">
				<p>
					<a href="aboutus.html">关于我们</a>|
					<a href="peisong.html">配送说明</a>|
				</p>
				<p>Copyright(C)2015-2020</p>
			</div>
	</body>
</html>
