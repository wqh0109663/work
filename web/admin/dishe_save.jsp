<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="gb2312"%>
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
            	���ߣ�admin
            	ʱ�䣺2017-03-11
            	����������ҳͷ
            -->
			<div id="top">
				<div>
					<img src="img/left-top-right.gif" />
				</div>
				<div id="title">
					<p>��Ӳ�Ʒ</p>
				</div>
				<div id="top_body">
					<img src="img/content-bg.gif" height="31px" />
				</div>
				<div>
					<img src="img/nav-right-bg.gif" />
				</div>
			</div>
			<!--
            	���ߣ�admin
            	ʱ�䣺2017-03-11
            	����������ҳ��
            -->
			<div id="middle">
				<br/>
				<br/>
				<!-- enctype="multipart/form-data" -->
				<form action="dodishe_save.jsp" method="post">
					<table align="center" border="1" cellspacing="0" cellpadding="0">
						<tr>
							<td class="left">��Ʒ���ƣ�</td>
							<td class="right"><input type="text" name="MenuName" /></td>
						</tr>
						<tr>
							<td class="left">ԭ �ϣ�</td>
							<td class="right"><input type="text" name="MenuRaw" /></td>
						</tr>
						<tr>
							<td class="left">�г��۸�</td>
							<td class="right"><input type="text" name="MarketPrice" /></td>
						</tr>
						<tr>
							<td class="left">��Ա�۸�</td>
							<td class="right"><input type="text" name="VIPrice" /></td>
						</tr>
						<tr>
							<td class="left">˵ ����</td>
							<td class="right"><textarea name="MenuDec" rows="10" cols="30"></textarea></td>
						</tr>
						<tr>
							<td class="left">��Ʒ���</td>
							<td class="right">
							
							<select name="MenuType">
							
							<%
							request.setCharacterEncoding("UTF-8");
							Connection con =  DBHelper.getConn();
							String sql = "select * from MenuType";
							
							ResultSet rs = DBHelper.executeQuery(con, sql);
							while (rs.next())
							{ %>
							
							<option value="1"><%=rs.getString(2) %></option>
							<% 
							}
							
							%>
								
								
									
									
								</select>
							
							
							</td>
						</tr>
						<!--  <tr>
							<td class="left">�ϴ�ͼƬ��</td>
							<td class="right"><input type="file" name="MenuImg" /></td>
						</tr>  -->
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