<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
		<link rel="stylesheet" href="css/login.css" />
		<link rel="stylesheet" href="css/index.css" />
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
		<!--首层div（first）-->
		<div class="first">
			
			<br>
			<!--信息（second）-->
			<div class="second">
				<!--登录div（login）-->
				<div class="login">
					<table align="center">
					<form action="doLogin.jsp">
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						
						<tr>
							<td> 登录账号<input type="text"  name="UserName" /></td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td>登录密码<input type="password" name="UserPassword"/></td>
						</tr>
						<tr>
							<td>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td align="center"><input type="submit" value="登录" class="corlor"/>   <a  href="Zhuche.jsp"><img src="img/zhuce.gif"></a></td>
						</tr>
					</form>
					</table>
				</div>
				<!--注册div（regist）-->
				<div class="regist">
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;&nbsp;&nbsp;<img src="img/cateitems.gif" />&nbsp;如果您已经是会员请在左侧登录</p>
					&nbsp;
					<p>&nbsp;&nbsp;&nbsp;<img src="img/cateitems.gif" />&nbsp;如果您还没有注册会员，<a href="Zhuche.jsp">点这里成员新会员</a></p>
					&nbsp;
					<p>&nbsp;&nbsp;&nbsp;<img src="img/cateitems.gif" />&nbsp;如果您忘了密码，<a href="person.jsp" style="color:chartreuse;">点这里重设一个新密码</a></p>
					
				</div>
			</div>
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