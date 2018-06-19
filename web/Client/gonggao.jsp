<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告通知 </title>
		<link rel="stylesheet" href="css/gonggao.css" />
		<link rel="stylesheet" href="css/index.css" />
	</head>
	<body>
				
		<div class="main">
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
	String noticeid=request.getParameter("noticeid");
	Connection conn1=DBHelper.getConn();
	String sql1="select NoticeName,NoticeCon,NoticeDate from Notice where NoticeId=? " ;
	ResultSet rs=DBHelper.executeQuery(conn1, sql1,noticeid);
	while (rs.next()){
%>
			<h3><%=rs.getString(1) %> </h3>
		<h4><sub><%=rs.getString(3) %></sub></h4>
		<p style="text-align: left;">&nbsp;<%=rs.getString(2) %></p>
		<p>&nbsp;</p>
			
			<% 
				}
				DBHelper.closeConn(conn1);
				
			%>
			
		
		<a href="main.jsp" >返回</a>
		</div>
		<div class="foot">
				<p>
					<a href="aboutus.jsp">关于我们</a>|
					<a href="peisong.jsp">配送说明</a>|
				</p>
				<p>Copyright(C)2015-2020</p>
			</div>
	</body>
</html>