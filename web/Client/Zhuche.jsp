<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/zhuche.css" />
<link rel="stylesheet" href="css/main.css" />
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
		<div class="table" style="width:600px;margin:auto">
		<form action="doZhuche.jsp" method="post" >
		<table border="1"  align="center" cellspacing="0">
			<tr>
				<td colspan="3" align="center"><font color=red>请填写用户信息（带<span class="s">*</span>为必须项）</font></td>
			</tr>
			<tr >
				<td>用户名：</td>
				<td><input type="text" name="UserName"/></td>
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
				<td><input type="password"name="UserPassword"/></td>
				<td><span class="s">*</span><font color=red>长度必须大于5个小于16个字符，只能为英文字、数字</font></td>
			</tr>
			<tr >
				<td>确认密码：</td>
				<td><input type="password" name="UserRePassword"/></td>
				<td><span class="s">*</span>
					<%if(session.getAttribute("brc") != null) {%>
							<%=session.getAttribute("brc")%>
					<%}else {%>
						<font color=red>请再次输入密码</font>
					<%} %>
				</td>								
			</tr>
			<tr >
				<td>真实姓名：</td>
				<td><input type="text" name="Name"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实姓名</font></td>
			</tr>
			<tr >
				<td>性别：</td>
				<td><input type="radio" value="0" name="Sex" checked="checked"/>男
				    <input type="radio" value="1" name="Sex"/>女
				</td>
				<td><span class="s">*</span><font color=red>请请填写您的真实信息</font></td>
			</tr>
			<tr >
				<td>年龄：</td>
				<td><input type="text" name="Age"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实年龄</font></td>
			</tr>
			<tr >
				<td>身份证号：</td>
				<td><input type="text" name="CarId"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实信息</font></td>
			</tr>
			<tr >
				<td>家庭住址：</td>
				<td><input type="text" name="Address"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实信息</font></td>
			</tr>
			<tr >
				<td>电话号码：</td>
				<td><input type="text" name="Tel"/></td>
				<td><span class="s">*</span><font color=red>请填写您的真实信息（格式为02411111111或13911111111）</font></td>
			</tr>
			<tr >
				<td>电子邮箱:</td>
				<td><input type="text" name="Email"/></td>
				<td><span class="s">*</span><font color=red>请请填写您有效的邮件地址，以便我们为您提供有效的服务</font></td>
			</tr>
			<tr>
				<td>邮政编码：</td>
				<td><input type="text" name="Post"/></td>
				<td><span class="s">*</span><font color=red>请请填写您的真实信息（格式为111111）</font></td>
			</tr>
			<tr >
				<td colspan="3" align="center">
					<input type="submit" value="注册" />
				</td>
			</tr>
		</table>
		</form>
		</div>
			
		</div >
		
		<div class="foot">
				<p>
					<a href="aboutus.jsp">关于我们</a>|
					<a href="peisong.jsp">配送说明</a>|
				</p>
				<p>Copyright(C)2015-2020</p>
			</div>
	</body>
</html>
