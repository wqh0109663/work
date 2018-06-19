<%@page import="java.sql.Connection"%>
<%@page import="com.hp.util.DBHelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
   <%
            String Adminname = (String)session.getAttribute("Adminname");
            String AdminPassword  = request.getParameter("AdminPassword");
            System.out.print(Adminname);
            System.out.print("AdminPassword:"+AdminPassword);
            
            
           Connection con = DBHelper.getConn();
          String sql = " update Admins set AdminPassword = ? where  Adminname = ? ";
           int count = DBHelper.executeUpdate(con, sql, AdminPassword,Adminname );
           
           if(count>0)
           {
           	out.print("<script>alert('修改成功');location.href ='system.jsp';</script>");
           }
           else
           {
           	out.print("<script>alert('修改失败');location.href ='system.jsp';</script>");
           	}

           DBHelper.closeConn(con);

            
            
            %>