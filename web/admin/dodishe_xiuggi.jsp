<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");
String MenuName = request.getParameter("MenuName");
String MenuRaw = request.getParameter("MenuRaw");
String MarketPrice = request.getParameter("MarketPrice");
String VIPrice = request.getParameter("VIPrice");
String MenuDec = request.getParameter("MenuDec");
String type = request.getParameter("type");
String MenuImg = request.getParameter("MenuImg");
String MenuId = request.getParameter("MenuId");




System.out.println("MenuId"+MenuId);

Connection con =  DBHelper.getConn();

String sql = "update  Menu set MenuName=?,MenuRaw=?,MarketPrice=?,VIPrice=?,MenuDec=? ,MenuTypeId=?,VIPCount =? where MenuId = ?";
String sql2="select * from Menu where MenuName=?";
ResultSet rs2 = DBHelper.executeQuery(con, sql2);
int  count = DBHelper.executeUpdate(con, sql,MenuName,MenuRaw,MarketPrice,VIPrice,MenuDec,type,0,MenuId);
if(count>0)
{
	out.print("<script>alert('修改成功');location.href ='dishe_save.jsp';</script>");
}
else
{
	out.print("<script>alert('修改失败');location.href ='dishe_save.jsp';</script>");
	}

DBHelper.closeConn(con);

%>
