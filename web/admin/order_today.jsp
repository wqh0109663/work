
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.hp.util.DBHelper" %>
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
						<td colspan="4">本日销售额统计</td>
					</tr>
					<tr class="head">
						<td>菜品名称</td>
						<td>订购数量</td>
						<td>单价</td>
						<td>合计</td>
					</tr>
					<% 
					request.setCharacterEncoding("UTF-8");
			   //查询所有今日销售订单信息
			         //1.连接
					Connection conn=DBHelper.getConn();
					//2.SQL语句
					String sql="select MenuName,OrderCount,OrderPrice,OrderSum  from  dbo.Orders,dbo.Menu  where dbo.Menu.MenuId=dbo.Orders.MenuId";
	                //3.执行sql语句
	                ResultSet  rs=DBHelper.executeQuery(conn,sql);
	                int count = 0;
	                float sum = 0;
	                //4.处理结果         
	                while(rs.next()){	                	
	                %>   
					<tr class="head">
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getInt(2) %></td>
						<td><%=rs.getFloat(3) %></td>
						<td><%=rs.getInt(2)*rs.getFloat(3) %></td>
					</tr>
					<%  
					count+= rs.getInt(2);
					sum+=rs.getInt(2)*rs.getFloat(3);
					
			} 
	                //5.关闭连接
			DBHelper.closeConn(conn);
	                %>

					<tr>
						<td colspan="4">合计：<%=count %>份 <%=sum %>元</td>
					</tr>
					<tr class="head">
						<td colspan="12">共1页
							<a href="#">[首页]</a> 1 2 3
							<a href="#">[尾页]</a>
						</td>
					</tr>
				</table>
				<br/>
				<br/>
			</div>
		</div>
	</body>

</html>