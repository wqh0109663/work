<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的餐车</title>
<link rel="stylesheet" href="css/mydiner.css" />
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
		
		<!--我的餐车区域-->
		<div id="md_table">

		<table align="center" border="1" cellspacing="0">
			<tr>
				<th colspan="4">我的订餐信息列表</th>
			</tr>
			<tr id="cart_first">
				<th>菜品名称</th>
				<th>单价</th>
				<th>数量</th>
				<th></th>
			</tr>
			
			
			<tr>
				<td colspan="4">
				<a href="#" class="md_btn_img" onclick="subOrder()"> <img
						src="img/canche_submit.gif" />
				</a> <a href="#" onclick="delMenuCar(1,1)" class="md_btn_img"> 
				<img src="img/quxiao2.gif" />
				</a></td>
			</tr>
		</table>
	</div>
		<div class="foot">
				<p>
					<a href="aboutus.jsp">关于我们</a>|
					<a href="peisong.jsp">配送说明</a>|
				</p>
				<p>Copyright(C)2015-2020</p>
			</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script>
    var UserId = <%=UserId%>
    function showMenuCar(){
    	$(".cart_item").remove();
    	$.ajax({
			type:'post',
			data:{ UserId:UserId },
			url:'action/showMenuCar.jsp',
			success:function(data){
				$("#cart_first").after(data);
			}
		})
    }
    
    function delMenuCar(MenuId,IsDelAll){
    	
    	$.ajax({
    		type:'post',
			data:{ UserId:UserId,MenuId:MenuId,IsDelAll:IsDelAll },
			url:'action/delMenuCar.jsp',
			success:function(data){
				if(data==1){
					
					showMenuCar();
				}
			}
    	})
    }
    function subOrder(){
    	$.ajax({
    		type:'post',
			data:{ UserId:UserId },
			url:'action/subOrder.jsp',
			success:function(data){
				if(data==1){
					showMenuCar();
				}
			}
    	})
    }
    $(function(){
    	
    	showMenuCar();
    })
	</script>
</body>
</html>
