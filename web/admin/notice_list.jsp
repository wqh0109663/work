<%@page import="java.sql.ResultSet"%>
<%@page import="com.hp.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/all.css" />
		<link rel="stylesheet" type="text/css" href="css/context.css" />
		<title></title>
	</head>

	<body id="background">
		<div id="body">
			<!--
            	作者：admin
            	时间：2017-03-11
            	描述：设置页头
            -->
			<div id="top">
				<div>
					<img src="img/left-top-right.gif" />
				</div>
				<div id="title">
					<p>公告信息</p>
				</div>
				<div id="top_body">
					<img src="img/content-bg.gif" height="31px" />
				</div>
				<div>
					<img src="img/nav-right-bg.gif" />
				</div>
			</div>
			<!--
            	作者：admin
            	时间：2017-03-11
            	描述：设置页中
            -->
			<div id="middle">
				<br/>
				<br/>
				<table align="center" border="1" cellspacing="0" cellpadding="0">
					<tr class="head">
						<td colspan="11">公告信息列表</td>
					</tr>
					<tr class="head">
						<td>标题</td>
						<td>内容</td>
						<td>发布时间</td>
						<td colspan="2"></td>
					</tr>
					<!-- 连接数据库 -->
					<% 
					//1.创建链接
					Connection conn1 = DBHelper.getConn();
					//2.SQL语句
					String sql = "select * from Notice";
					//3.执行sql语句
					ResultSet rs = DBHelper.executeQuery(conn1, sql);
					//4.处理结果
					while(rs.next()){
					%>		
													
					<tr>
					    
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<% String delStr = "doDelete.jsp?id="+rs.getInt(1); %>
						<% String alterStr = "doAlter.jsp?id="+rs.getInt(1); %>
						<td><a href=<%= alterStr %>>修改</a></td>
						<td><a href=<%= delStr %>>刪除</a></td>
					</tr>
					
					<%
					}
					//5.关闭链接
					DBHelper.closeConn(conn1);
					
					%>
					
					
					
				</table>
				<br/>
				<br/>
			</div>
		</div>
	</body>

</html>