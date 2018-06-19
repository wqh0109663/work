<%--
  Created by IntelliJ IDEA.
  User: wqh
  Date: 18-6-18
  Time: 上午10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>食养生</title>
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
    <p>
        大家都知道有“世界无车日”（9月22日）、“世界无烟日”（5月31日）、“世界无童工日”（6 月 12 日）等，但是还有两个重要的日子往往没有引起注意，一个是 3 月 20 日的“世界无肉日”Meatout），一个是 11月 25 日的“世界素食日”（World Vegetarian Day），也是“世界无肉日”。

        世界无肉日简介

        1985开始每年的3月20日是“无肉日”，由总部设在华盛顿、非赢利的公益性组织“农场动物改革运动”(farm animal reform movement，简称farm)发起，在春天的首日举行推广健康和平素食的民间教育活动，目的是拯救动物、保护环境和改善健康。

        节日由来

        每年3月20日的“无肉日”始于1985年，由总部设在华盛顿、非赢利的公益性组织“农场动物改革运动”(farm animal reform movement，简称farm)发起，在春天的首日举行推广健康和平素食的民间教育活动，目的是拯救动物、保护环境和改善健康(save animals, protect the environment, and improve health)。

        第34个节日

        2018年为世界第34个无肉日.在这一天，普通民众可以通过演讲、素食晚宴、举办烹饪秀、品尝会、发传单等方式邀请亲朋好友一起剔除吃肉旧习一天，拥抱健康、充满爱心的素食饮食。此项活动一开始即席卷全美五十个州及一些其他国家，2008年这项活动除在全美五十个州蓬勃举行，更波及全球的二十四个国家，成了名副其实的“世界无肉日”。响应「无肉日」运动，许多主流的健康提倡机构，包括美国癌症协会、美国国家癌症研究所、约翰霍普金斯大学和美国心脏协会都已各自发起运动，推广植物性饮食。在个人健康、世界饥荒、永续资源、环境利益、和保护动物方面，有诸多益处。

        “素食对大多都市人的好处显而易见。”植物性食物中的膳食纤维有助于预防和减少“三高”、肠道癌症、肥胖和痛风的发生。不过，事实上，减少肉制品摄入，还有着爱护环境的重要意义。比如：生产一公斤的牛肉须耗费十万公升水；每生产1公斤肉类所排放的二氧化碳，相当于开车出门3小时；饲养家畜所造成的温室气体约占温室气体排放总量的80%……也有人说“吃一天素，等于种一百棵树。”从保护环境和自身健康的角度考虑，尝试一天不吃肉，为这个世界以及其他物种做些举手之劳的贡献。
    </p>
</div>
</body>
</html>
