<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.hp.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
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
//处理请求的编号
request.setCharacterEncoding("UTF-8");

//1.获取填写的公告标题与内容
String NoticeName = request.getParameter("title");
String NoticeCon = request.getParameter("content");

//2.操作数据库
  //(1).建立连接
   Connection conn = DBHelper.getConn();
  //(2).编写SQL语句
  String sql = "insert into Notice  values(?,?,getDate())";
  //(3).执行SQL语句:添加一条公告
  int count = DBHelper.executeUpdate(conn, sql, NoticeName,NoticeCon);
 //(4).处理执行结果
  if(count>0){
	  out.print("<script>alert('恭喜您,添加成功!');  location.href='notice_save.jsp';  </script>");
  }
	//5.关闭链接
	DBHelper.closeConn(conn);
%>

</body>
</html>