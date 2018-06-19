<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/all.css" />
		<link rel="stylesheet" type="text/css" href="css/context.css"/>
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
					<p>管理员信息</p>
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
         <%--    <%
            String Adminname = (String)session.getAttribute("Adminname");
            String AdminPassword  = request.getParameter("AdminPassword ");
            
            
            
           Connection con = DBHelper.getConn();
          String sql = " update Admins set AdminPassword = ? where  Adminname = ? ";
           int count = DBHelper.executeUpdate(con, sql, AdminPassword );
           
           if(count>0)
           {
           	out.print("<script>alert('修改成功');location.href ='dishe_save.jsp';</script>");
           }
           else
           {
           	out.print("<script>alert('修改失败');location.href ='dishe_save.jsp';</script>");
           	}

           DBHelper.closeConn(con);

            
            
            
            %> --%>
            
			<div id="middle">
				<br/>
				<br/>
				<form action="xiugaimima.jsp" method="post">
				<table align="center" border="1" cellspacing="0" cellpadding="0">
					<tr>
						<td colspan="2">更改管理员信息</td>
					</tr>
					<tr>
						<td class="left">管理员账号：</td>
						<td class="right">
						</td>
					</tr>
					<tr>
						<td class="left">管理员密码：</td>
						<td class="right"><input type="text" name="AdminPassword" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit" /></td>
					</tr>
				</table>
				</form>
				<br/>
				<br/>
			</div>
		</div>
	</body>

</html>