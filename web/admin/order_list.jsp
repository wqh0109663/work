    <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.hp.util.DBHelper" %>
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
					<p>订单信息</p>
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
						<td colspan="12">销售订单查询结果信息列表</td>
					</tr>
					<tr class="head">
						<td>用户ID</td>
						<td>真实姓名</td>
						<td>联系方式</td>
						<td>家庭住址</td>
						<td>菜品名称</td>
						<td>订购数量</td>
						<td>单价(元)</td>
						<td>合计(元)</td>
						<td>订购时间</td>
						<td>是否派送</td>
						<td >确认订单</td>
					</tr>
				<% request.setCharacterEncoding("UTF-8");
			   //查询销售订单信息
			         //1.连接
					Connection conn=DBHelper.getConn();
					//2.SQL语句
					String sql="select Users.UserId,Name,Tel,Address,Menu.MenuName,OrderCount,OrderPrice,OrderSum,OrderDate,OrderIs,OrderPost,Orders.OrderId  from  dbo.Orders,dbo.Users,dbo.Menu where dbo.Users.UserId=dbo.Orders.UserId and dbo.Menu.MenuId=dbo.Orders.MenuId";

	                //3.执行sql语句
	                ResultSet  rs=DBHelper.executeQuery(conn,sql);
	                //4.处理结果         
	                while(rs.next()){	                	
	                %>   
					<tr class="head">
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getInt(6) %></td>
						<td><%=rs.getInt(7) %></td>
						<td><%=rs.getInt(6)*rs.getInt(7)%></td>
						<td><%=rs.getString(9) %></td>
						<td><%=rs.getInt(11)==1?"是":"否" %></td>
						<td>
						<a href="doCheck.jsp?OrdersId=<%=rs.getInt(12)%>&type=1">确认</a>
						
						<a href="doCheck.jsp?OrdersId=<%=rs.getInt(12)%>&type=0">取消</a>
						
						
						
						</td>
					</tr>
					<%  
			} 
	                //5.关闭连接
			DBHelper.closeConn(conn);
	                %>
				
					

				</table>
				<br/>
				<br/>
			</div>
		</div>
	</body>

</html>