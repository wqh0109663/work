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
					<p>类别信息</p>
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
						<td colspan="11">菜单信息列表</td>
					</tr>
					
					<tr class="head">
						<td>类别ID</td>
						<td>类别名称</td>
						<td colspan="2"></td>
					</tr>
					
					<%			
	request.setCharacterEncoding("UTF-8");
	Connection conn = DBHelper.getConn();
	
	String sqlw = "select * from MenuType";
	//String a = session.setAttribute("MenuTypeId", MenuTypeId);
	ResultSet rs =  DBHelper.executeQuery(conn, sqlw);
	while(rs.next()){ %>
			
					<tr>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td>
							<a href=" doxiugaitype_list.jsp?MenuType=<%=rs.getString(2) %>&MenuTypeId=<%=rs.getString(1) %> ">修改</a>
						</td>
						<td>
							<a href="doshanchu_type_list.jsp?MenuTypeId=<%=rs.getString(1) %>">刪除</a>
						</td>
					</tr>
		
		
	<% 
	}
	
	%>	
	
	
	
	
	
	
	
				
					
				</table>
				<br/>
				<br/>
			</div>
		</div>
	</body>

</html>