<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于我们</title>
		<link rel="stylesheet" href="css/au.css" />
		<link rel="stylesheet" href="css/index.css" />
		 <link rel="stylesheet" href="css/main.css" />
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
			<div  class="name">
			<%
			Object UserName=session.getAttribute("UserName");
			if(UserName!=null)
			{
				out.print("亲爱的"+UserName+"您好！欢迎光临！");
			}else{
				out.print("&nbsp");
			}
			Object UserId = session.getAttribute("UserId");
			
			%>
			
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
		<div class="main">



			<br>
			<h2>关于我们</h2>
			<p>&nbsp;</p>
			<p style="text-align: left;">&nbsp;"小时候的味道"即便五年十年都没机会再吃,也总是会挂念着.一吃就能想起过往时的味道来.这种味觉记忆.缠绕着思乡的点滴情怀,成为人们最原始的"乡愁".你也有"小时候的味道"吧?</p>
            <p style="text-align: left;">&nbsp;欢迎来到阿婆私房菜,让你重温童年妈妈的味道!</p>
            <p>&nbsp;</p>
            <a href="main.jsp">返回</a>
            
            
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