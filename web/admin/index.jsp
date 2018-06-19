<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/all.css" />
		<title></title>
	</head>
	<style type="text/css">

	</style>

	<body>		
		<div>
			<div id="body_top"></div>
			<div id="body_middle">
				<div id="body_middle_context">
					<div id="logo">
						<img src="img/logo.png" />
					</div>
					<div id="contacts">
						<p>
							<img src="img/icon-mail2.gif" />客户服务邮箱：
							<a href="#">admin@apsfc.com</a>
						</p>
						<p>
							<img src="img/icon-phone.gif" />官方网站：
							<a href="#">http://www.apsfc.com</a>
						</p>
					</div>
					<div id="instruction">
						<img src="img/icon-demo.gif" />
						<a href="#">使用说明</a> <img src="img/icon-login-seaver.gif" />
						<a href="#">在线客服</a>
					</div>
				</div>
				<div id="body_middle_context">
					<form action="dodenglu.jsp" method="post">
						<table id="login">
							<tr>
								<td colspan="2"><b style="font-size: 16px;">登陆网上订餐后台管理</b></td>
							</tr>
							<tr>
								<td class="left">管理员：</td>
								<td class="right"><input type="text" name="Adminname" /></td>
							</tr>
							<tr>
								<td class="left">密码：</td>
								<td class="right"><input type="password" name="AdminPassword" /></td>
							</tr>
							<tr>
								<td></td>
								<td><input type="checkbox" name="cookiesave" />5天内自动登录</td>
							</tr>
							<tr>
								<td colspan="2" align="center" id="submit"><input type="submit" value="登录"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="重置" /></td>
							</tr>
						</table>
					</form>
					<div id="imgwel">
						<img src="img/login-wel.gif" />
					</div>
				</div>
			</div>
			<!--
            	作者：admin
            	时间：2017-03-11
            	描述：中部下
            -->
			<div id="body_bottom">Copyright © 2015-2020</div>
		</div>
	</body>

</html>