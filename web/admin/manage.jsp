<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/all.css"/>
		<title>后台</title>
		
	</head>
	
	<frameset rows="64px,*" noresize="noresize" frameborder="0">
		<frame src="top.jsp" scrolling="no"/>
		<frameset cols="200px,*" noresize="noresize">
			<frame src="menu.html"/>
			<frame src="dishe_list.jsp" name="right"/>
		</frameset>
	</frameset>
</html>