<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String UserId = request.getParameter("UserId");
Connection conn = DBHelper.getConn();
String sql = "select MenuName,VIPrice,CarCount,a.MenuId from (select MenuId,SUM(CarCount) CarCount from MenuCar where UserId=? group by MenuId) a,Menu where a.MenuId=Menu.MenuId";
ResultSet rs = DBHelper.executeQuery(conn, sql, UserId);
StringBuilder html =new StringBuilder();
float sum = 0;
int count = 0;
while(rs.next()){
	html.append("<tr  align=\"center\" class=\"cart_item\">");
    html.append("<td>"+rs.getString(1) +"</td>");
	html.append("<td>"+rs.getFloat(2) +"</td>");
	html.append("<td>"+rs.getInt(3) +"</td>");
	html.append("<td ><a href=\"#\" onclick=\"delMenuCar("+rs.getInt(4) +
			",0)\" style=\"color: #555;text-decoration: none;\"  >取消</a> </td> </tr>");
	sum = sum + rs.getFloat(2)*rs.getInt(3);
	count = count + rs.getInt(3);
}
html.append("<tr align=\"center\" class=\"cart_item\"> <td>小计:</td> <td colspan=\"2\"> "+
"<span id=\"cart_sum\" class='md_num'> "+sum+
" </span>元 </td> <td>共 <span id=\"cart_num\" class='md_num'> "+count+
" </span>份 </td></tr>");
out.print(html);
DBHelper.closeConn(conn);
%>