<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
String MenuType =request.getParameter("type");
//String MenuType =request.getParameter("MenuTypeId");


Connection conn =  DBHelper.getConn();
String sql = "insert into MenuType values (?)";
int  count = DBHelper.executeUpdate(conn,sql,MenuType);
if(count>0)
{
	out.print("<script>alert('添加成功');location.href ='type_save.jsp';</script>");
}
else
{
	out.print("<script>alert('添加失败');location.href ='type_save.jsp';</script>");
	}

DBHelper.closeConn(conn);




%>