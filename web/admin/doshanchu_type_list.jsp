<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");

Connection con =  DBHelper.getConn();
String MenuType = request.getParameter("MenuType");
String MenuTypeId = request.getParameter("MenuTypeId");
String sql="delete from Menutype where MenuTypeId=?";
/* String sql1="delete from MenuCar where MenuId=?";
String sql2="delete from Orders where MenuId=?"; */


int count=DBHelper.executeUpdate(con, sql, MenuTypeId);
/* int count1=DBHelper.executeUpdate(con, sql1, MenuId);
int count2=DBHelper.executeUpdate(con, sql2, MenuId); */



if(count>0)
{
	out.print("<script>alert('删除成功');location.href ='dishe_list.jsp';</script>");
}
else
{
	out.print("<script>alert('删除失败');location.href ='dishe_list.jsp';</script>");
	}




%>