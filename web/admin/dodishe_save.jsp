<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String MenuName = request.getParameter("MenuName");
String MenuRaw = request.getParameter("MenuRaw");
String MarketPrice = request.getParameter("MarketPrice");
String VIPrice = request.getParameter("VIPrice");
String MenuDec = request.getParameter("MenuDec");
/* String type = request.getParameter("type"); */
String MenuImg = request.getParameter("MenuImg");
String MenuType = request.getParameter("MenuType");

Connection con =  DBHelper.getConn();

String sql = "insert into Menu(MenuName,MenuRaw,MarketPrice,VIPrice,MenuDec ,MenuTypeId,VIPCount ) values(?,?,?,?,?,?,0)";


int  count = DBHelper.executeUpdate(con, sql,MenuName,MenuRaw,MarketPrice,VIPrice,MenuDec ,MenuType,0);

if(count>0)
{
	out.print("<script>alert('添加成功');location.href ='dishe_save.jsp';</script>");
}
else
{
	out.print("<script>alert('添加失败');location.href ='dishe_save.jsp';</script>");
	}

DBHelper.closeConn(con);

%>