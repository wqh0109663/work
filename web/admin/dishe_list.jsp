<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
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
				<p>菜品信息</p>
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
			<br /> <br />
			<table align="center" border="1" cellspacing="0" cellpadding="0">
				<tr class="head">
					<td colspan="11">菜单信息列表</td>
				</tr>
				
				

				<tr class="head">
					<td>菜单名称</td>
					<td>展示图片</td>
					<td>原料</td>
					<td>类型</td>
					<td>说明</td>
					<td>市场价格</td>
					<td>市场价销售数量</td>
					<td>会员单价</td>
					<td>会员价销售数量</td>
					<td colspan="2"></td>
				</tr>

				
				
		<%			
	request.setCharacterEncoding("UTF-8");
	Connection conn = DBHelper.getConn();
	
	String sqlw = "select MenuName ,MenuImg ,MenuRaw,MenuType,MenuDec ,MarketCount,MarketPrice, VIPrice,VIPCount,MenuId from Menu ,MenuType where Menu. MenuTypeId = MenuType.MenuTypeId";
	
	ResultSet rs =  DBHelper.executeQuery(conn, sqlw);
	/* ,MenuName,MenuImg ,MenuRaw,MenuType,MenuDec ,MarketCount,MarketPrice, VIPrice,VIPCount */
	while(rs.next())
	{
	%>

				<tr>
					<td><%=rs.getString(1)%></td>
					<td><img src="img/m_fenzhengrou.gif" width="30px"
						height="30px" /></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
					<td><%=rs.getString(7) %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=rs.getString(8) %></td>
					<td><%=rs.getString(9) %></td>
					<td><a href="doxiugaidishe_list.jsp?MenuId=<%=rs.getString(10) %>">修改</a></td>
					<td><a href="doshanchu.jsp?MenuId=<%=rs.getString(10) %>">刪除</a></td>
				</tr>

				<%
	}
					DBHelper.closeConn(conn);
				%>



				
			</table>
			<br />
			</div>
			</div>
			</body>