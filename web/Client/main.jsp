<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Connection" %>
<%@page import="com.hp.util.DBHelper" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>首页</title>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/index.css"/>
</head>
<body>
<div class="head">
    <div class="tips">
        <div class="list">
            <a href="../index.jsp">回到官网</a>|
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
            <a href="main.jsp">首页</a> <a href="mydiner.jsp">我的餐车</a>
            <a href="myorder.jsp">我的订单</a>
            <a href="person.jsp">用户中心</a>
            <a href="peisong.jsp">配送说明</a>
            <a href="aboutus.jsp">关于我们</a>
            <a href="quit.jsp">注销退出</a>
        </div>
    </div>
    <div class="littlebanner"></div>
</div>
<!--最外层-->
<div class="main">

    <div class="index_content">
        <!--菜单-->
        <div class="menu">

            <!--第一行-->
            <%
                Connection conn1 = DBHelper.getConn();
                String sql1 = "select MenuId,MenuImg,MenuType.MenuType,MenuName,MarketPrice,VIPrice,MenuRaw from Menu,MenuType where Menu.MenuTypeId=MenuType.MenuTypeId";
                ResultSet rs = DBHelper.executeQuery(conn1, sql1);
                while (rs.next()) {
            %>

            <div class="menu_list">
                <table>
                    <tr>

                        <td rowspan="5"><input type="hidden"
                                               value="<%=rs.getInt(1) %>"> <img class="menu_img"
                                                                                src="img/<%=rs.getString(2) %>"
                                                                                alt="暂无图片"/></td>
                        <td>菜名:</td>
                        <td><%=rs.getString(4) %>
                        </td>

                    </tr>


                    <tr>
                        <td>市场价格:</td>
                        <td><%=rs.getString(5) %>
                        </td>
                    </tr>

                    <tr>
                        <td>会员价格:</td>
                        <td><%=rs.getString(6) %>
                        </td>
                    </tr>

                    <tr>
                        <td>配料:</td>
                        <td><%=rs.getString(7) %>
                        </td>
                    </tr>

                    <tr>
                        <td>菜品类型:</td>
                        <td><%=rs.getString(3) %>
                        </td>
                    </tr>
                </table>
                <a href="#" class="a_img" onclick="addMenuCar(<%=rs.getInt(1) %>,<%=UserId%>)"> <img src="img/cart.png">
                </a>
            </div>
            <%
                }
                DBHelper.closeConn(conn1);
            %>
        </div>
        <!--公告-->
        <div class="news">
            <!--公告一-->
            <div class="news_first">
                <!--公告一标题-->
                <div class="news_first_1">
                    <img src="img/notice.jpg"> <font size="4px" color=coral>公司新闻</font>
                    <br>
                    <hr color="coral">
                </div>
                <!--公告一信息-->
                <div class="news_first_2">
                    <table width="100%">
                        <%
                            Connection conn2 = DBHelper.getConn();
                            String sql2 = "select  NoticeId,NoticeName,NoticeDate from Notice order by NoticeDate desc ";
                            ResultSet rs2 = DBHelper.executeQuery(conn2, sql2);

                            while (rs2.next()) {
                        %>

                        <tr>
                            <td><img src="img/43.gif"> <a
                                    href="gonggao.jsp?noticeid=<%=rs2.getInt(1) %>"><%=rs2.getString(2) %>
                            </a>
                            </td>
                            <td align="right"><%=rs2.getDate(3) %>
                            </td>
                        </tr>

                        <%
                            }
                            DBHelper.closeConn(conn2);
                        %>


                    </table>
                </div>
            </div>


            <!--公告二-->
            <div class="news_second">
                <!--公告二标签--->
                <div class="news_second_1">
                    <img src="img/car.jpg"> <font size="4px" color=coral>我的餐车</font>
                    <sub>SHOPPING CART</sub> <br>
                </div>
                <!--公告二消息-->
                <div class="news_second_2">

                    <table width="320px">
                        <tr bgcolor="blanchedalmond" align="center" id="cart_first">
                            <td>菜单名字</td>

                            <td>单价</td>

                            <td>数量</td>
                            <td width="100"></td>
                        </tr>
                        <tr align="right">
                            <td colspan="2">
                                <a href="#" onclick="subOrder()" class="a_img">
                                    <img src="img/canche_submit.gif">
                                </a>
                            </td>
                            <td colspan="2" align="center">
                                <a href="#" onclick="delMenuCar(1,1)" class="a_img">
                                    <img src="img/quxiao2.gif">
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <!--公告三-->
            <div class="news_third">
                <!--消息三标签-->
                <div class="news_third_1">
                    <img src="img/sale.jpg"> <font size="4px" color=coral>销售排行榜</font><br>
                    <hr color="coral">
                </div>
                <!--消息三信息-->
                <div class="news_third_2">
                    <table width="100%">
                        <%
                            Connection conn3 = DBHelper.getConn();
                            String sql3 = "select  MenuId,MenuName,VIPCount from Menu where VIPCount>0 order by VIPCount desc";
                            ResultSet rs3 = DBHelper.executeQuery(conn3, sql3);
                            while (rs3.next()) {
                        %>
                        <tr>
                            <td><img src="img/43.gif"> <a
                                    href="fooddetails.jsp?MenuId=<%=rs3.getInt(1)%>"><%=rs3.getString(2)%>
                            </a></td>

                            <td align="right">已销售<%=rs3.getString(3)%>次
                            </td>
                        </tr>
                        <%
                            }
                            DBHelper.closeConn(conn3);
                        %>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="foot">
        <p>
            <a href="aboutus.jsp">关于我们</a>|
            <a href="peisong.jsp">配送说明</a>|
        </p>
        <p>Copyright(C)2015-2020</p>
    </div>

</div>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
    var UserId = <%=UserId%>
        function addMenuCar(menuId, userId) {
            $.ajax({
                type: 'post',
                data: {UserId: userId, MenuId: menuId},
                url: 'action/addMenuCar.jsp',

                success: function (data) {
                    if (data == 1) {
                        showMenuCar();
                        return;
                    } else {
                        alert("请登录");
                    }
                }
            })
        }

    function showMenuCar() {
        $(".cart_item").remove();
        $.ajax({
            type: 'post',
            data: {UserId: UserId},
            url: 'action/showMenuCar.jsp',
            success: function (data) {
                $("#cart_first").after(data);
            }
        })
    }

    function delMenuCar(MenuId, IsDelAll) {
        $.ajax({
            type: 'post',
            data: {UserId: UserId, MenuId: MenuId, IsDelAll: IsDelAll},
            url: 'action/delMenuCar.jsp',
            success: function (data) {
                if (data == 1) {
                    showMenuCar();
                }
            }
        })
    }

    function subOrder() {
        $.ajax({
            type: 'post',
            data: {UserId: UserId},
            url: 'action/subOrder.jsp',
            success: function (data) {
                if (data == 1) {
                    alert("订单已提交，稍后将有客服给予确认并派送");
                    showMenuCar();
                } else {

                }
            }
        })
    }

    $(function () {
        showMenuCar();
    })
</script>
</body>
</html>
