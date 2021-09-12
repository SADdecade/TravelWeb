<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <title>个人页面</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <h1>个人界面</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-1">
            <ul class="nav nav-pills nav-stacked">
                <li role="presentation"><a href="${pageContext.request.contextPath}/Admin/remove">退出登录</a></li>
                <li role="presentation" class="active"><a href="${pageContext.request.contextPath}/Admin/onestrip" target="content">景区管理</a></li>
                <li role="presentation"><a href="#">Profile</a></li>
                <li role="presentation"><a href="#">Messages</a></li>
            </ul>
        </div>
        <div class="col-lg-11">
            <iframe name="content" src="${pageContext.request.contextPath}/Admin/onestrip" height="100%" width="100%" scrolling="no" frameborder="0"></iframe>
        </div>
    </div>
</div>
</body>
</html>
