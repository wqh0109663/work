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

	<body id="background">
		<div id="body">
			<!--设置页头-->
			<div id="top">
				<div>
					<img src="img/left-top-right.gif" />
				</div>
				<div id="title">
					<p>添加公告</p>
				</div>
				<div id="top_body">
					<img src="img/content-bg.gif" height="31px" />
				</div>
				<div>
					<img src="img/nav-right-bg.gif" />
				</div>
			</div>
			<!--描述：设置页中-->
			<div id="middle">
				<br /> <br />
					<form action="doSave.jsp" method="post">
						<table align="center" border="1" cellspacing="0" cellpadding="0">
							<tr>
								<td class="left">公告标题：</td>
								<td class="right"><input type="text" name="title" /></td>
							</tr>
							<tr>
								<td class="left">公告内容：</td>
								<td class="right"><textarea name="content" rows="10" cols="30"></textarea></td>
							</tr>
							<tr>
								<td colspan="2" align="center"><input type="submit" value="添加" /></td>
							</tr>
						</table>
					</form>
				<br /> <br />
			</div>
		</div>
	</body>

</html>