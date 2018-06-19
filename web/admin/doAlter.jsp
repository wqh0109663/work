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
			<!--设置页头-->
			<div id="top">
				<div>
					<img src="img/left-top-right.gif" />
				</div>
				<div id="title">
					<p>添加公告</p>
				</div>
				<div id="top_body">
					<img src="img/content-bg.gif" height="31px" />
				</div>
				<div>
					<img src="img/nav-right-bg.gif" />
				</div>
			</div>
			<!--描述：设置页中-->
			<div id="middle">
				<br /> <br />
				<% 
				String idStr  = request.getParameter("id");
				int id = Integer.parseInt(idStr);
				String urlWithId = "doUpdate.jsp?id="+id;
				%>
			            <form action=<%= urlWithId %> method="post">
						<table align="center" border="1" cellspacing="0" cellpadding="0">
						<% 
						
						
						
					//1.创建链接
					Connection conn1 = DBHelper.getConn();
					
					//2.SQL语句
					String sql = "select * from Notice where NoticeId = ?  ";
					
					//3.执行sql语句
					ResultSet rs = DBHelper.executeQuery(conn1, sql,id);
					
					
					
					//4.处理结果
					while(rs.next()){
					%>		
					<tr>
						<td class="left">公告标题：</td>
						<td class="right"><input type="text" name="title"  value="<%=rs.getString(2) %>"/></td>
					</tr>
					<tr>
						<td class="left">发布时间：</td>
						<td class="right"><input type="text" name="time"  value="<%=rs.getString(4) %>"/></td>
					</tr>
					<tr>
						<td class="left">公告内容：</td>
						<td class="right"><textarea name="content" rows="10" cols="30" ><%=rs.getString(3) %></textarea></td>
					</tr>
					<%
					}
					//5.关闭链接
					DBHelper.closeConn(conn1);
					%>
							
							<tr>
								<td colspan="2" align="center"><input type="submit" value="修改" /></td>
							</tr>
						</table>
						</form>
				<br /> <br />
			</div>
		</div>
	</body>

</html>