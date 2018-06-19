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
//从session获取登录名
	request.setCharacterEncoding("utf-8");
	Object UserId=session.getAttribute("UserId");
    String UserName=request.getParameter("UserName");
    String UserPassword=request.getParameter("UserPassword");
    String Name=request.getParameter("Name");
    String Sex=request.getParameter("Sex");
    Sex = Sex.equals("男")?"0":"1";
    String Age=request.getParameter("Age");
    String CardId=request.getParameter("CardId");
    String Tel=request.getParameter("Tel");
    String Address=request.getParameter("Address");
    String Post=request.getParameter("Post");
    String Email=request.getParameter("Email");
    
  //处理请求的编号
	request.setCharacterEncoding("UTF-8");
	//1.连接
	Connection conn=DBHelper.getConn();
	//2.sql语句
	String sql="update users set  UserName=? ,UserPassword=?,Sex=?,Name=?,Age=?,CardId=?,Address=?,Tel=?,Email=?,Post=? where UserId=? ";
	//执行sql语句
	int rs=DBHelper.executeUpdate(conn, sql,UserName,UserPassword,Sex,Name,Age,CardId,Address,Tel,Email,Post,UserId);
	//处理查询的结果
	if(rs>0)
	{
		out.print("<script>alert('修改成功');location.href='person.jsp';</script>");
	}
	else
		{out.print("<script>alert('修改失败');location.href='person.jsp';</script>");}
		//关闭连接
		DBHelper.closeConn(conn); 
		
  %>

</body>
</html>