<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>处理我的订单所有</title>
		<link rel="stylesheet" href="css/index.css" />
		<link rel="stylesheet" href="css/myorder.css" />
		
	</head>
	
	<body>
		<div class="head">
			<div class="tips">
				<div class="list">
					<a href="login.jsp">会员登录</a>| <a href="Zhuche.jsp">会员注册</a>| <a
						href="quit.jsp">注销退出</a>| <a href="peisong.jsp">配送说明</a>| <a
						href="aboutus.jsp">关于我们</a>
				</div>
			</div>
			<div  class="name">
			<%
			Object UserName=session.getAttribute("UserName");
			if(UserName!=null)
			{
				out.print("亲爱的"+UserName+"您好！欢迎光临！");
			}else{
				out.print("&nbsp");
			}
			Object UserId = session.getAttribute("UserId");
			
			%>
			
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
			
		<div class="main">	
		<table align="center" border="1" width="500" height="150" cellspacing="0">
		<form action="domyorderfindmenu.jsp"  method="post">
			<tr>
				<td align="right"> 按菜品名称查询</td>
				<td colspan="2"><input type="text" name="menuname"/>
				<input type="submit" value="提交"></td>
			</tr>
			
		</form>	
		
		<form action="domyorderfindate.jsp" method="post">
		
			<tr>
				<td align="right">按销售日期查询</td>
				<td colspan="2"><input type="date" name="datetime"/>
				<input type="submit" value="提交"></td>
				
			</tr>
				</form>
		
			<tr align="center">
				<td colspan="3"><a href="domyorderall.jsp">我的所有订单</a>
				&nbsp;&nbsp;<a href="domyorderfalse.jsp">未已派送订单</a>
				&nbsp;&nbsp;<a href="domyordertrue.jsp">已派送订单</a>
				</td>
			</tr>
		</table>
		
		&nbsp;
		<table align="center" border="1" cellspacing="0">
			<tr>
				<td colspan="9" align="center">订单查询结果信息列表</td>
			</tr>
			<tr align="center">
				<td>菜品名称</td>
				<td>真实姓名</td>
				<td>订购电话</td>
				<td>派送地址</td>
				<td>订购数量</td>
				<td>单价（元）</td>
				<td>合计（元）</td>
				<td>订购时间</td>
				<td>是否派送</td>
			</tr>
			<% 
	request.setCharacterEncoding("UTF-8");
	String menuname=request.getParameter("menuname");
	Connection conn1=DBHelper.getConn();
	String sql1="select MenuName,UserName,Tel,Address,OrderCount,OrderPrice,OrderSum,OrderDate,OrderPost  from Orders,Menu,Users where Orders.MenuId=Menu.MenuId and Orders.UserId=Users.UserId and Users.UserId=? " ;
	ResultSet rs=DBHelper.executeQuery(conn1, sql1,session.getAttribute("UserId"));
	while (rs.next()){
%>
			<tr align="center">
				<td><%=rs.getString("MenuName") %></td>
				<td><%=rs.getString("UserName") %></td>
				<td><%=rs.getObject("Tel") %></td>
				<td><%=rs.getString("Address") %></td>
				<td><%=rs.getInt("OrderCount") %></td>
				<td><%=rs.getFloat("OrderPrice") %></td>
				<td><%=rs.getFloat("OrderSum") %></td>
				<td><%=rs.getDate("OrderDate") %></td>
				<td><%=rs.getBoolean("OrderPost") %></td>
			</tr>
			
			<% 
				}
				DBHelper.closeConn(conn1);
				
			%>
			
		</table>
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