<%@page import="java.sql.ResultSet"%>
<%@page import="com.hp.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String UserId = request.getParameter("UserId");
if(UserId.length()==0){
	out.print("0");
}else{
String MenuId = request.getParameter("MenuId");
Connection conn = DBHelper.getConn();
String sql = "insert into MenuCar(UserId,MenuId,CarCount) values(?,?,1)";
int result = DBHelper.executeUpdate(conn, sql, UserId,MenuId);

if(result>0){
	out.print("1");
}else{
	out.print("0");
}
DBHelper.closeConn(conn);
}
%>
