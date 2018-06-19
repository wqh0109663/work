<%--
  Created by IntelliJ IDEA.
  User: wqh
  Date: 18-6-18
  Time: 上午10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>美食分享</title>
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
    #美味分享#第一次做磅蛋糕，用了@彩味之行 彩姐家的磅蛋糕模，非常靠谱！[心]有图有真相，<br>
    轻轻一磕就完美脱模，再轻轻一擦就亮洁如新了！还有我想说，好东西不常有，见好就收了吧！<br>
    要不真的就错过再苦等了...[害羞]【桑葚磅蛋糕】分享给大家~~桑葚正是当令好果子，酸甜的味道<br>
    使磅蛋糕更加美味！[可爱] ​<br>
    <img  class="menu_img" src="https://ww4.sinaimg.cn/large/703c0666gw1ertix8hk17j21kw2dce75.jpg"/>
    <img  class="menu_img" src="https://ww2.sinaimg.cn/large/703c0666gw1ertixdmxikj20m80tm79j.jpg"/>

</div>
</body>
</html>
