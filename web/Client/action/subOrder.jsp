<%@page import="java.sql.ResultSet" %>
<%@page import="com.hp.util.DBHelper" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String UserId = request.getParameter("UserId");
    if (UserId.length() == 0) {
        out.print("0");
    } else {
        Connection conn = DBHelper.getConn();
        String sql = "select MenuName,VIPrice,CarCount,a.MenuId from (select MenuId,SUM(CarCount) CarCount from MenuCar where UserId=? group by MenuId) a,Menu where a.MenuId=Menu.MenuId";
        ResultSet rs = DBHelper.executeQuery(conn, sql, UserId);

        int flag = 1;
        int result = 1;
        sql = "delete from MenuCar where UserId = ?";
        result = DBHelper.executeUpdate(conn, sql, UserId);
        if (result > 0) {
            while (rs.next()) {
                sql = "insert into Orders values(null,?,?,?,?,?,null,0,0)";
                result = DBHelper.executeUpdate(conn, sql,UserId, rs.getInt(4), rs.getInt(3), rs.getInt(2), rs.getInt(3) * rs.getInt(2));
                if (result < 1) {
                    flag = 0;
                }
            }

            if (flag == 1) {
                out.print("1");
            } else {
                out.print("0");
            }
        } else {
            out.print("0");
        }

        DBHelper.closeConn(conn);
    }
%>