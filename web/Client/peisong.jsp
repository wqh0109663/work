<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>配送说明</title>
		<link rel="stylesheet" href="css/psguide.css" />
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
		<h3 style="text-align: center;">配送指南</h3>
		<p><b>午餐时间:</b><font color="red">11:00~14:00</font></p>
		<p><b>晚餐时间:</b><font color="red">17:00~21:00</font></p>
		<p><b>联系电话:</b><font color="red">4008888</font></p>
		<p><b>联系人:</b><font color="red">李经理</font></p>
		<p><b>注:</b><font color="red">&nbsp;本店不支持网上付款,费用将由送餐人员代收,请自备零钱,谢谢合作!</font></p>
		<p>&nbsp;</p>
		<p>&nbsp;订单经过本店客服人员确认后.将安排快递人员送餐.由于中午订餐人数比较多,请在本店正常营业时间外订餐,到时才能准时送达!周末进店人员比较多,暂不支持订餐,望见谅!</p>
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