<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
<!-- 登录表单 -->
<div class="login-form-container">
    <form action="${pageContext.request.contextPath}/User/login" method="post">
        <h3>您未登录 请先登录</h3>
        <input type="text" class="box" name="username" placeholder="请输入用户名" required>
        <input type="password" class="box" name="password" placeholder="请输入密码" required>
        <input type="submit" value="登录" class="btn">
        <p>忘记密码? <a href="#">找回密码</a></p>
        <p>没有账户? <a href="#" id="register-btn">注册</a></p>
    </form>
</div>
<!-- 注册表单 -->
<div class="register-form-container">
    <i class="fas fa-times" id="register-close"></i>
    <form action="${pageContext.request.contextPath}/User/addUser" method="post" id="register-form">
        <h3>注册</h3>
        <input type="text" class="box" name="username" onblur="check()" id="registername" placeholder="请输入用户名" required>
        <span id="userNameInfo"></span>
        <input type="password" class="box" name="password" placeholder="请输入密码" required>
        <button type="submit" id="register-sub" class="btn">注册</button>
    </form>
</div>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/login.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
<script>
    function check(){
        $.post({
            url:"${pageContext.request.contextPath}/User/test",
            data:{"name":$("#registername").val()},
            success:function (data){
                if(data.toString()==="该用户名已被使用"){
                    $("#userNameInfo").css("color","red");
                    $("#register-btn").disabled = true;
                }else{
                    $("#userNameInfo").css("color","green");
                    $("#register-btn").disabled = false;
                }
                $("#userNameInfo").html(data);
            }
        })
    }
</script>
</body>
</html>
