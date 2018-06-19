

<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/myorder.css" />
 <link rel="stylesheet" href="css/main.css" />
		<link rel="stylesheet" href="css/index.css" />
	</head>
	<body>
	 <%
//从session获取登录名
Object UserId=session.getAttribute("UserId");
  //处理请求的编号
	request.setCharacterEncoding("UTF-8");
	//1.连接
	Connection conn=DBHelper.getConn();
	//2.sql语句
	String sql="select * from Users where UserId=?";
	//执行sql语句
	ResultSet rs=DBHelper.executeQuery(conn, sql,UserId);
	
	//处理查询的结果
	if(rs.next())
	{


		
  %>
		<div class="head">
			<div class="tips">
				<div class="list">
					<a href="login.jsp">会员登录</a>| <a href="zhuche.jsp">会员注册</a>| <a
						href="quit">注销退出</a>| <a href="peisong.jsp">配送说明</a>| <a
						href="aboutus.jsp">关于我们</a>
				</div>
			</div>
			<div class="name">
			<%
			Object UserName=session.getAttribute("UserName");
			if(UserName!=null)
			{
				out.print("亲爱的"+UserName+"您好！欢迎光临！");
			}else{
				out.print("&nbsp");
			}
			
			
			%></div>
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
		<div class="table" style="width:600px;margin:auto">
			<form action="doPerson.jsp" method="post">
		<table border="1"  align="center" cellspacing="0">
			<tr>
				<td colspan="3" align="center"><font color=red>请填写用户信息（带<span class="s">*</span>为必须项）</font></td>
			</tr>
			<tr >
				<td>用户名：</td>
				<td><input type="text" name="UserName" value="<%=rs.getString("UserName") %>"/></td>
				<td><span class="s">*</span>
				
				<%if(session.getAttribute("arc") != null) {%>
							<%=session.getAttribute("arc")%>
					<%}else {%>
						<font color=red>您用来登录的用户名</font>
					<%} %>
				</td>
			</tr>
			<tr >
				<td>密码：</td>
				<td><input type="password"name="UserPassword" value="<%=rs.getString("UserPassword") %>"/></td>
				<td><span class="s">*</span><font color=red>长度必须大于5个小于16个字符，只能为英文字、数字</font></td>
			</tr>
			
			<tr >
				<td>真实姓名：</td>
				<td><input type="text" name="Name" value="<%=rs.getString("Name") %>"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实姓名</font></td>
			</tr>
			<tr >
				<td>性别：</td>
				<td>
				   
				
				<input type="text" value="<%=(rs.getInt("Sex")==0?"男":"女") %>" name="Sex" />
				    
				</td>
				<td><span class="s">*</span><font color=red>请请填写您的真实信息</font></td>
			</tr>
			<tr>
			   	
				<td>年龄：</td>
				<td><input type="text" name="Age" value="<%=rs.getInt("Age") %>"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实年龄</font></td>
			</tr>
			<tr >
				<td>身份证号：</td>
				<td><input type="text" name="CardId" value="<%=rs.getObject("CardId") %>"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实信息</font></td>
			</tr>
			<tr >
				<td>家庭住址：</td>
				<td><input type="text" name="Address" value="<%=rs.getObject("Address") %>"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实信息</font></td>
			</tr>
			<tr >
				<td>电话号码：</td>
				<td><input type="text" name="Tel" value="<%=rs.getObject("Tel") %>"/></td>
				<td><span class="s">*</span><font color=red>请填写您的真实信息（格式为02411111111或13911111111）</font></td>
			</tr>
			<tr >
				<td>电子邮箱:</td>
				<td><input type="text" name="Email" value="<%=rs.getObject("Email") %>"/></td>
				<td><span class="s">*</span><font color=red>请请填写您有效的邮件地址，以便我们为您提供有效的服务</font></td>
			</tr>
			<tr>
				<td>邮政编码：</td>
				<td><input type="text" name="Post" value="<%=rs.getString("Post") %>"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实信息（格式为111111）</font></td>
			</tr>
			<tr >
				<td colspan="3" align="center">
					<input type="submit" value="修改" />
				</td>
			</tr>
		</table>
		</form>
		</div>
		
		</div >
		
	<%	
	}
	else
		{out.print("<script>alert('请先登录');location.href='login.jsp';</script>");}
	//关闭连接
	DBHelper.closeConn(conn);  %>	
		<div class="foot">
				<p>
					<a href="aboutus.jsp">关于我们</a>|
					<a href="peisong.jsp">配送说明</a>|
				</p>
				<p>Copyright(C)2015-2020</p>
			</div>
	</body>
</html>
