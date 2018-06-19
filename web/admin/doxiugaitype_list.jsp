<%@page import="java.sql.ResultSet"%>
<%@page import="com.hp.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
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
<%
request.setCharacterEncoding("UTF-8");

Connection con =  DBHelper.getConn();
String MenuType = request.getParameter("MenuType");
String MenuTypeId = request.getParameter("MenuTypeId");
String sql  = "select * from MenuType  ";
ResultSet rs = DBHelper.executeQuery(con, sql);
session.setAttribute("MenuTypeId", MenuTypeId);





//String sql = "update  Menutype set MenuType= ? where MenuTypeId = ?";
/* ResultSet rs = DBHelper.executeQuery(con, sql);
int  count = DBHelper.executeUpdate(con, sql,MenuType);
if(count>0)
{
	out.print("<script>alert('修改成功');location.href ='type_save.jsp';</script>");
}
else
{
	out.print("<script>alert('修改失败');location.href ='type_save.jsp';</script>");
	} */

DBHelper.closeConn(con);


%>
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
					<p>添加类别</p>
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
					<form action="dotype_list_xiugai.jsp">
						<table align="center" border="1" cellspacing="0" cellpadding="0">
							<tr>
								<td class="left">菜品类别：</td>
								<td class="right">
									<input type="text" name="MenuType" value=<%=MenuType %> />
								</td>
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