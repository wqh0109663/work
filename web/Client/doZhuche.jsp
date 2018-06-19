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
    request.setCharacterEncoding("UTF-8");
    String UserName=  request.getParameter("UserName");
    String UserPassword=  request.getParameter("UserPassword");
    String UserRePassword=  request.getParameter("UserRePassword");
    String Sex=  request.getParameter("Sex");
    String Name=  request.getParameter("Name");
    String Age=  request.getParameter("Age");
    String CarId=  request.getParameter("CarId");
    String Address=  request.getParameter("Address");
    String Tel=  request.getParameter("Tel");
    String Email=  request.getParameter("Email");
    String Post=  request.getParameter("Post");
    
   //处理请求的编号
	//1.连接
	if(UserName.length()==0||UserName.length()>20){
		session.setAttribute("arc", "用户名为空或用户名长度超过长度20");
		out.print("<script>location.href='Zhuche.jsp';</script>");
	}
	else if(!UserPassword.equals(UserRePassword)){
		session.setAttribute("brc", "两次输入密码不一致");
		out.print("<script>location.href='Zhuche.jsp';</script>");
	}
	else 
	{   
		Connection conn=DBHelper.getConn();
		//2.sql语句
		String sql="insert into Users(UserName,UserPassword,Sex,Name,Age,CardId,Address,Tel,Email,Post) values(?,?,?,?,?,?,?,?,?,?)";
		//执行sql语句
		int count =DBHelper.executeUpdate(conn, sql, UserName,UserPassword,Sex,Name,Age,CarId,Address,Tel,Email,Post);
		//处理查询的结果

		if(count>0)
		{
			session.setAttribute("UserName", UserName);
			out.print("<script>alert('注册成功'); location.href='quit.jsp';</script>");
		}
		else
			{out.print("<script>alert('注册失败');location.href='Zhuche.jsp?errorInfo=xxxx';</script>");}
		
			//关闭连接
			DBHelper.closeConn(conn); 
	}
	
		%>
</body>
</html>