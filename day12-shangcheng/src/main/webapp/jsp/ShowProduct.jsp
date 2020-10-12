<%--
  Created by IntelliJ IDEA.
  User: 10260
  Date: 2020/9/25
  Time: 19:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>商品首页</title>
    <link rel="stylesheet" type="text/css" href="../css/Home.css">
</head>
<body>
<table width="80%" align="center">
    <!--1-->
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td>
                        <img src="../image/logo.jpg">
                    </td>
                    <td>
                        <img src="../image/img5.jpg">
                        <img src="../image/img6.jpg">
                        <img src="../image/img7.jpg">
                        <img src="../image/img4.jpg">
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${sessionScope.user==null}">
                                <a href="Login.jsp">登陆</a>&nbsp;&nbsp;
                                <a href="../html/Register.html">注册</a>&nbsp;&nbsp;
                                <a href="cart.jsp">购物车</a>
                            </c:when>
                            <c:otherwise>
                                admin: ${sessionScope.user.username}
                                <a href="/LogoutServlet">退出</a>
                                <a href="../jsp/cart.jsp">购物车</a>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <!--2-->
    <tr id="tr2">
        <td style="text-align: left">
            <a href="DongYiMai.html">首页</a>&nbsp;&nbsp;&nbsp;
            <a href="DongYiMai.html">精品</a>&nbsp;&nbsp;&nbsp;
            <a href="DongYiMai.html">手机</a>&nbsp;&nbsp;&nbsp;
            <a href="DongYiMai.html">数码时尚</a>&nbsp;&nbsp;&nbsp;
            <a href="DongYiMai.html">办公设备</a>&nbsp;&nbsp;&nbsp;
            <a href="DongYiMai.html">主板显卡</a>&nbsp;&nbsp;&nbsp;
            <a href="DongYiMai.html">智能设备</a>&nbsp;&nbsp;&nbsp;
            <a href="DongYiMai.html">Macbook</a>
        </td>
    </tr>
    <!--3-->
    <tr>
        <td>
            <img src="../image/img9.jpg" width="100%">
        </td>
    </tr>
    <!--4-->
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td clospan="5">
                        热门商品
                        <img src="../image/title2.jpg"><br>
                    </td>
                </tr>
                <tr>
                    <c:forEach items="${hotList}" var="item" begin="0" end="4">
                        <td>
                            <a href="/Product_info_Servlet?id=${item.proId}">
                                <img src="${item.proMinImage}"><br>
                                <font>${item.shopPrice}</font><br/>
                                <span>${item.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>
                <tr>
                    <c:forEach items="${hotList}" var="item" begin="5" end="9">
                        <td>
                            <a href="/Product_info_Servlet?id=${item.proId}">
                                <img src="${item.proMinImage}"><br>
                                <font>${item.shopPrice}</font><br/>
                                <span>${item.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>
                <tr>
                    <c:forEach items="${hotList}" var="item" begin="10" end="14">
                        <td>
                            <a href="/Product_info_Servlet?id=${item.proId}">
                                <img src="${item.proMinImage}"><br>
                                <font>${item.shopPrice}</font><br/>
                                <span>${item.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>
            </table>
        </td>
    </tr>
    <!--5-->
    <tr>
        <td>
            <img src="../image/img2.webp" width="100%">
        </td>
    </tr>
    <!--6-->
    <tr>
        <td>
            <table width="100%">
                <tr>
                    <td colspan="5">
                        优选商品
                        <img src="../image/title2.jpg">
                    </td>
                </tr>
                <tr>
                    <c:forEach items="${YouList}" var="item" begin="0" end="4">
                        <td>
                            <a href="/Product_info_Servlet?id=${item.proId}">
                                <img src="${item.proMinImage}"><br>
                                <font>${item.shopPrice}</font><br/>
                                <span>${item.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>
                <tr>
                    <c:forEach items="${hotList}" var="item" begin="5" end="9">
                        <td>
                            <a href="/Product_info_Servlet?id=${item.proId}">
                                <img src="${item.proMinImage}"><br>
                                <font>${item.shopPrice}</font><br/>
                                <span>${item.proName}</span>
                            </a>
                        </td>
                    </c:forEach>
                </tr>
            </table>
        </td>
    </tr>
    <!--7-->
    <tr>
        <td>
            <img src="../image/img1.webp" width="100%">
        </td>
    </tr>
    <!--第八行：存放友情链接-->
    <tr>
        <td>
            <p align="center">
                <a href=""><font color="#337AB7">关于我们</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">联系我们</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">联系客服</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">合作招商</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">商家帮助</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">营销中心</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">手机帮助</font></a>&nbsp;&nbsp;
                <a href=""><font color="#337AB7">销售联盟</font></a>&nbsp;&nbsp;
            </p>
        </td>
    </tr>
    <!--第九行：存放版权信息-->
    <tr>
        <td align="center">
            &copy; 2005-2020 东易买 版权所有，并保留所有权利
        </td>
    </tr>
</table>
</body>
</html>
