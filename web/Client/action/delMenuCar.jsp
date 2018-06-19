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
	int IsDelAll = Integer.parseInt(request.getParameter("IsDelAll"));
	Connection conn = DBHelper.getConn();
	String sql = "";
	/*
	if isdelall ==true
	   删除当前用户所有的餐车
	else isdelall ==false
	    删除当前用户此id的餐车
	*/
	if(IsDelAll==0){
		sql = "delete from MenuCar where UserId=? and MenuId=?";
	}else{
		sql = "delete from MenuCar where UserId=?";
	}
	
	int result = DBHelper.executeUpdate(conn, sql, UserId,MenuId);
	
	
	if(result>0){
		out.print("1");
	}else{
		out.print("0");
	}
	DBHelper.closeConn(conn);
	}
	
	
%>