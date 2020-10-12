<%--
  Created by IntelliJ IDEA.
  User: 10260
  Date: 2020/9/24
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="../css/Login.css">
    <script type="text/javascript" src="../js/Login.js"></script>
</head>
<body>
<div>
    <form onsubmit="return checkForm()" action="/LoginServlet" method="get">
        <h1>会员登陆<br>
            <span>USER LOGIN</span>
        </h1>
        账号：<input type="text" name="username" id="unId" class="inp" onblur="checkUserName()">
        <span id="unSpan"></span><br>
        密码：<input type="password" name="password" id="pwId" class="inp" onblur="checkPassword()">
        <span id="pwSpan"></span><br>
        <input type="checkbox"> 自动登录<br>
        <input type="submit" value="登录" name="submit" class="inp">
    </form>
    <span>
        <c:if test="${param.message=='loginError'}">
            用户名密码错误
        </c:if>
        <c:if test="${param.message=='againLogin'}">
            请登录
        </c:if>
    </span>
</div>
</body>
</html>
