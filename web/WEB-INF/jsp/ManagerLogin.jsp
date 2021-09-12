<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script>
        if("${msg}" != ""){
            alert("${msg}");
        }
    </script>
</head>
<body>
<!-- 登录表单 -->
<div class="login-form-container">
    <form action="${pageContext.request.contextPath}/Manager/login" method="post">
        <h3>管理员登录</h3>
        <input type="text" class="box" name="username" placeholder="请输入用户名" required>
        <input type="password" class="box" name="password" placeholder="请输入密码" required>
        <input type="submit" value="登录" class="btn">
    </form>
</div>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/login.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
</body>
</html>