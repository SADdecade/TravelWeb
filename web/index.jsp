<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>旅游网</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
</head>
<body>
<!-- 头部 -->
<header>
    <div id="menu-bar" class="fas fa-bars"></div>
    <a href="#" class="logo"><span>K</span>arma</a>
    <nav class="navbar">
        <a href="#home">首页</a>
        <a href="#book">预定</a>
        <a href="#packages">景点</a>
        <a href="#gallery">游记</a>
        <a href="#contact">联系我们</a>
        <a href="${pageContext.request.contextPath}/User/admin">个人主页</a>
    </nav>
    <!-- 图标 -->
    <div class="icons">
        <i class="fas fa-search" id="search-btn"></i>
        <i class="fas fa-user" id="login-btn"></i>
    </div>
    <!-- 搜索框 -->
    <form action="" class="search-bar-container">
        <input type="search" id="search-bar" placeholder="search here...">
        <label for="search-bar" class="fas fa-search"></label>
    </form>
</header>
<!-- 登录表单 -->
<div class="login-form-container">
    <i class="fas fa-times" id="form-close"></i>
    <form action="${pageContext.request.contextPath}/User/login" method="post">
        <h3>登录</h3>
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
<!-- 首页视频banner区 -->
<section class="home" id="home">

    <div class="content">
        <h3>旅游是一种信仰</h3>
        <p>和我们一起去远方,寻找诗和梦想</p>
        <a href="#" class="btn">查看更多</a>
    </div>

    <div class="controls">
        <span class="vid-btn active" data-src="${pageContext.request.contextPath}/images/vid-1.mp4"></span>
        <span class="vid-btn" data-src="${pageContext.request.contextPath}/images/vid-2.mp4"></span>
        <span class="vid-btn" data-src="${pageContext.request.contextPath}/images/vid-3.mp4"></span>
        <span class="vid-btn" data-src="${pageContext.request.contextPath}/images/vid-4.mp4"></span>
        <span class="vid-btn" data-src="${pageContext.request.contextPath}/images/vid-5.mp4"></span>
    </div>

    <div class="video-container">
        <video src="${pageContext.request.contextPath}/images/vid-1.mp4" id="video-slider" loop autoplay muted></video>
    </div>

</section>
<!-- 预订部分 -->
<section class="book" id="book">

    <h1 class="heading">
        <span>b</span>
        <span>o</span>
        <span>o</span>
        <span>k</span>
        <span class="space"></span>
        <span>n</span>
        <span>o</span>
        <span>w</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="${pageContext.request.contextPath}/images/book-img.svg" alt="">
        </div>

        <form action="">
            <div class="inputBox">
                <h3>景点选择</h3>
                <input type="text" placeholder="请选择景点">
            </div>
            <div class="inputBox">
                <h3>人数</h3>
                <input type="text" placeholder="请输入人数">
            </div>
            <div class="inputBox">
                <h3>多久到</h3>
                <input type="date">
            </div>
            <input type="submit" class="btn" value="立即 预定">
        </form>

    </div>

</section>

<!-- 套餐部分 -->

<section class="packages" id="packages">

    <h1 class="heading">
        <span>S</span>
        <span>E</span>
        <span>N</span>
        <span>C</span>
        <span>E</span>
        <span>S</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="${pageContext.request.contextPath}/images/p-1.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> 成都 </h3>
                <p>和我在成都的街头走一走。</p>
                <a href="#" class="btn">详情</a>
            </div>
        </div>

        <div class="box">
            <img src="${pageContext.request.contextPath}/images/p-2.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> 上海 </h3>
                <p>这里有你梦想中的迪士尼。</p>
                <a href="#" class="btn">详情</a>
            </div>
        </div>

        <div class="box">
            <img src="${pageContext.request.contextPath}/images/p-3.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> 广州 </h3>
                <p>中国独树一帜的海阔天空之城。</p>
                <a href="#" class="btn">详情</a>
            </div>
        </div>

        <div class="box">
            <img src="${pageContext.request.contextPath}/images/p-4.jpg" alt="">
            <div class="content">
                <h3> <i class="fas fa-map-marker-alt"></i> 深圳 </h3>
                <p>创业者的城市。</p>
                <a href="#" class="btn">详情</a>
            </div>
        </div>
    </div>
</section>
<!-- 相册部分 -->

<section class="gallery" id="gallery">

    <h1 class="heading">
        <span>N</span>
        <span>O</span>
        <span>T</span>
        <span>E</span>
        <span>S</span>
    </h1>

    <div class="box-container">

        <div class="box">
            <img src="${pageContext.request.contextPath}/images/g-1.jpg" alt="">
            <div class="content">
                <h3>美丽景色</h3>
                <p>这是你梦中向往的地方</p>
                <a href="#" class="btn">查看 更多</a>
            </div>
        </div>
        <div class="box">
            <img src="${pageContext.request.contextPath}/images/g-2.jpg" alt="">
            <div class="content">
                <h3>美丽景色</h3>
                <p>这是你梦中向往的地方</p>
                <a href="#" class="btn">查看 更多</a>
            </div>
        </div>
        <div class="box">
            <img src="${pageContext.request.contextPath}/images/g-3.jpg" alt="">
            <div class="content">
                <h3>美丽景色</h3>
                <p>这是你梦中向往的地方</p>
                <a href="#" class="btn">查看 更多</a>
            </div>
        </div>
        <div class="box">
            <img src="${pageContext.request.contextPath}/images/g-4.jpg" alt="">
            <div class="content">
                <h3>美丽景色</h3>
                <p>这是你梦中向往的地方</p>
                <a href="#" class="btn">查看 更多</a>
            </div>
        </div>
    </div>
</section>

<!-- 底部 -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>关于我们</h3>
            <a href="#karma">KARMA</a>
        </div>
        <div class="box">
            <h3>快速链接</h3>
            <a href="#home">首页</a>
            <a href="#book">预定</a>
            <a href="#sences">景点</a>
            <a href="#note">游记</a>
        </div>
        <div class="box">
            <h3>关于我们</h3>
            <a href="#">微博</a>
            <a href="#">微信</a>
            <a href="#">蓝鸟</a>
        </div>

    </div>

    <h1 class="credit"> created by <span> K</span>arma | all rights reserved! </h1>

</section>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
</body>
</html>