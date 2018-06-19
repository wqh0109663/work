<%@page import="java.sql.ResultSet"%>
<%@page import="com.hp.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

request.setCharacterEncoding("UTF-8");
Connection conn = DBHelper.getConn();


String Adminname = request.getParameter("Adminname");
String AdminPassword = request.getParameter("AdminPassword");
session.setAttribute("Adminname", Adminname);

/* 
System.out.print(Adminname);
System.out.print(AdminPassword); */

String sql  = "select * from Admins  where Adminname=? and AdminPassword=?";
ResultSet rs = DBHelper.executeQuery(conn, sql,Adminname,AdminPassword);
if (rs.next())
	{
		out.print("<script>alert('登录成功');location.href ='manage.jsp';</script>");
	}
	else
	{
		out.print("<script>alert('登录失败');location.href ='index.jsp';</script>");
		}





DBHelper.closeConn(conn);



%>