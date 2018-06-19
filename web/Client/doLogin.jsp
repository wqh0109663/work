<%@page import="com.hp.util.DBHelper"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%  
    String UserName=  request.getParameter("UserName");
    String UserPassword=  request.getParameter("UserPassword");
   //处理请求的编号
	request.setCharacterEncoding("UTF-8");
	//1.连接
	Connection conn=DBHelper.getConn();
	//2.sql语句
	String sql="select * from Users where UserName=? and UserPassword=?";
	//执行sql语句
	ResultSet rs=DBHelper.executeQuery(conn, sql, UserName,UserPassword);
	
	//处理查询的结果
	if(rs.next())
	{
		session.setAttribute("UserId", rs.getString("UserId"));
		session.setAttribute("UserName", UserName);
		out.print("<script>alert('登录成功'); location.href='main.jsp';</script>");
	}
	else
		{out.print("<script>alert('登录失败');location.href='main.jsp';</script>");}
		//关闭连接
		DBHelper.closeConn(conn); 
		
		%>
</body>
</html>