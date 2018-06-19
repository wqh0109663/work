<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
					<p>添加菜品</p>
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
									<%

request.setCharacterEncoding("UTF-8");

Connection con =  DBHelper.getConn();
String sql  = "select * from Menu where MenuId=?";
String MenuId =request.getParameter("MenuId");
ResultSet rs =  DBHelper.executeQuery(con, sql,MenuId);
while(rs.next()){ 
	%>
				<form action="dodishe_xiuggi.jsp?MenuId=<%=MenuId %>" method="post" >
					<table align="center" border="1" cellspacing="0" cellpadding="0">

	
	<tr>
							<td class="left">菜品名称：</td>
							<td class="right"><input type="text" name="MenuName" value="<%=rs.getString(2)%>" /></td>
						</tr>
						<tr>
							<td class="left">原 料：</td>
							<td class="right"><input type="text" name="MenuRaw"  value="<%=rs.getString(7)%>" /></td>
						</tr>
						<tr>
							<td class="left">市场价格：</td>
							<td class="right"><input type="text" name="MarketPrice"   value="<%=rs.getString(4)%>" /></td>
						</tr>
						<tr>
							<td class="left">会员价格：</td>
							<td class="right"><input type="text" name="VIPrice"  value="<%=rs.getString(9)%>" /></td>
						</tr>
						<tr>
							<td class="left">说 明：</td>
							<td class="right"><textarea name ="MenuDec"  rows="10" cols="30"><%=rs.getString(6)%></textarea></td>
						</tr>
						<tr>
							<td class="left">菜品类别：</td>
							<td class="right">
							<select name="type">
								<%
							request.setCharacterEncoding("UTF-8");
							Connection con2 =  DBHelper.getConn();
							String sql2 = "select * from MenuType";
							
							ResultSet rs2 = DBHelper.executeQuery(con2, sql2);
							while (rs2.next())
							{ %>
							
							<option value="<%=rs2.getInt(1)%>"><%=rs2.getString(2) %></option>
							<% 
							}
							
							%>
								</select>
							</td>
						</tr>
	<% 
	

}




%>
					
						
						<%-- <tr>
							<td class="left">上传图片：</td>
							<td class="right"><img src="img/<%=MenuImg%>.jpg"   /></td>
						</tr> --%>
						<tr>
							<td colspan="2" align="center"><input type="submit" value="修改"/></td>
						</tr>
					</table>
				</form>
				<br/>
				<br/>
			</div>
		</div>
	</body>
<%-- <% 
session.setAttribute("MenuName", MenuName);
session.setAttribute("MenuRaw", MenuRaw);
session.setAttribute("MarketPrice", MarketPrice);
session.setAttribute("VIPrice", VIPrice);
session.setAttribute("MenuType", MenuType);
session.setAttribute("MenuDec", MarketPrice);


%> --%>
</html>