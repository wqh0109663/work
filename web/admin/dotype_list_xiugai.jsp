<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");


String MenuTypeId = (String)session.getAttribute("MenuTypeId");
String MenuType = request.getParameter("MenuType");
System.out.println("MenuType"+MenuType);
System.out.println("MenuTypeId"+MenuTypeId);

 Connection con=   DBHelper.getConn();
 
 String sql = "update  MenuType set MenuType=? where MenuTypeId = ?";
 int  count = DBHelper.executeUpdate(con, sql,MenuType,MenuTypeId);
 
 if(count>0)
 {
 	out.print("<script>alert('修改成功');location.href ='type_save.jsp';</script>");
 }
 else
 {
 	out.print("<script>alert('修改失败');location.href ='type_save.jsp';</script>");
 	}

 DBHelper.closeConn(con);

%>