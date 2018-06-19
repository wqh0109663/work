<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言板</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/index.css"/>
    <style>
        .input1 input{
            width: 251px;
            height: 156px;
        }
        .input1 button{
            width: 50px;
            height: 50px;
        }
    </style>
    <script type="text/javascript">
        function test(){
            alert("提交成功")
        }

    </script>

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
    <form class="input1" action="/TitleServlet">
        <input type="text" name="message" placeholder="请输入您的留言" style="width: 200px"/>
        <button onclick="test()">提交</button>
    </form>
</div>
</body>
</html>
