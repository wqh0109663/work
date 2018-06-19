<%@ page import="com.hp.util.DBHelper" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: wqh
  Date: 18-6-18
  Time: 上午10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有帖子</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/index.css"/>
</head>
<body>
<div class="head">
    <div class="tips">
        <div class="list">
            <a href="../index.jsp">回到官网</a> |
            <a href="login.jsp">会员登录</a>| <a href="Zhuche.jsp">会员注册</a>| <a
                href="quit.jsp">注销退出</a>| <a href="peisong.jsp">配送说明</a>|
            <a href="usercommunity.jsp">用户社区</a>
        </div>
    </div>
    <div class="name">
        <%
            Object UserName = session.getAttribute("UserName");
            if (UserName != null) {
                out.print("亲爱的" + UserName + "您好！欢迎光临！");
            } else {
                out.print("&nbsp");
            }
            Object UserId = session.getAttribute("UserId");

        %>

    </div>
    <div class="logo_banner">
        <div class="logo">
            <img src="img/1257477260.gif"/>
        </div>
        <div class="banner">
            <a href="alltitle.jsp">所有帖子</a>
            <a href="fenxian.jsp">美味分享</a>
            <a href="yangsheng.jsp">食养生</a>
            <a href="comment.jsp">留言板</a>

        </div>
    </div>
    <div class="littlebanner"></div>
    <%
        Connection conn1 = DBHelper.getConn();
        String sql1 = "select  * from user_community";
        ResultSet rs = DBHelper.executeQuery(conn1, sql1);
        while (rs.next()) {
    %>
    <div class="menu_list">
        <table>
            <tr>
                <td>
                    <span style="font-size: x-large"> 帖子id</span>
                </td>
                <td>
                    <span style="font-size: x-large"><%=rs.getInt(1) %></span>
                </td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: x-large"> 标题：</span>
                </td>
                <td>
                    <span style="font-size: x-large"> <%=rs.getString(2) %></span>
                </td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: x-large"> 内容：</span>
                </td>
                <td>
                    <span style="font-size: x-large"> <%=rs.getString(3) %></span>
                </td>
            </tr>
            <tr>
                <td>
                    <span style="font-size: x-large"> 评论：</span>
                </td>
                <td>
                    <span style="font-size: x-large"> <%=rs.getString(4) %></span>
                </td>
            </tr>
        </table>
    </div>
    <%
        }
        DBHelper.closeConn(conn1);
    %>

</div>
</body>
</html>
