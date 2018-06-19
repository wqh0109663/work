<%@page import="com.hp.util.DBHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String OrdersId = request.getParameter("OrdersId");

int type = Integer.parseInt(request.getParameter("type"));
Connection conn = DBHelper.getConn();
String sql = "update Orders set OrderPost=? where OrderId=?";
int rs = DBHelper.executeUpdate(conn, sql, type,OrdersId);
if(rs>0){
	out.print("<script>location.href='order_list.jsp'</script>");
	
}else{
	out.print("<script>location.href='order_list.jsp'</script>");
}



%>