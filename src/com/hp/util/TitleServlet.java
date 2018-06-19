package com.hp.util;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;

/**
 * @author wqh
 * @date 18-6-18
 */
public class TitleServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String message = request.getParameter("message");
        Connection conn1 = DBHelper.getConn();
        String sql = "insert into user_community(comment) values(?)" ;
        int i = DBHelper.executeUpdate(conn1, sql, message);
        DBHelper.closeConn(conn1);
        if (i>0){
            request.setAttribute("head",1);
        }
        response.sendRedirect("Client/alltitle.jsp");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
