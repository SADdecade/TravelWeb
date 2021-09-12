<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/9/11
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <title>侧边展开导航栏(半隐藏)</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1>管理界面</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-1">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation"><a href="${pageContext.request.contextPath}/Manager/remove">退出登录</a></li>
                <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/Manager/scene">景区管理</a></li>
                <li role="presentation"><a href="#">Profile</a></li>
                <li role="presentation"><a href="#">Messages</a></li>
            </ul>
        </div>
        <div class="col-lg-11">
            <iframe src="${pageContext.request.contextPath}/Manager/scene" height="100%" width="100%" scrolling="no" frameborder="0"></iframe>
        </div>
    </div>
</div>
</body>
</html>
