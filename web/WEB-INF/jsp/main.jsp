<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <script>
    if("${msg}" != ""){
      alert("${msg}");
    }
  </script>
  <c:remove var="msg"></c:remove>
</head>
<body>
<!-- 头部 -->
<header>
  <div id="menu-bar" class="fas fa-bars"></div>
  <a href="#" class="logo"><span>K</span>arma</a>
  <nav class="navbar">
    <a href="#home">首页</a>
    <a href="#book">预定</a>
    <a href="${pageContext.request.contextPath}/scene/queryall">景点</a>
    <a href="${pageContext.request.contextPath}/travelnote/queryAll">游记</a>
    <a href="#contact">联系我们</a>
    <a href="${pageContext.request.contextPath}/User/admin">个人主页</a>
    <a href="${pageContext.request.contextPath}/gofiletest">测试页面</a>
    <a href="${pageContext.request.contextPath}/Manager/gologin">管理员登录</a>
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
  </div>

  <div class="controls">
    <span class="vid-btn active" data-src="${pageContext.request.contextPath}/images/labubu.mp4"></span>
    <span class="vid-btn" data-src="${pageContext.request.contextPath}/images/vid-2.mp4"></span>
    <span class="vid-btn" data-src="${pageContext.request.contextPath}/images/vid-3.mp4"></span>
    <span class="vid-btn" data-src="${pageContext.request.contextPath}/images/vid-4.mp4"></span>
    <span class="vid-btn" data-src="${pageContext.request.contextPath}/images/vid-5.mp4"></span>
  </div>

  <div class="video-container">
    <video src="${pageContext.request.contextPath}/images/labubu.mp4" id="video-slider" loop autoplay muted></video>
  </div>

</section>

<!-- 套餐部分 -->

<section class="packages" id="packages">

  <h1 class="heading">
    <span>推</span>
    <span>荐</span>
    <span>景</span>
    <span>点</span>
  </h1>

  <div class="box-container">

    <div class="box">
      <img src="${pageContext.request.contextPath}/upload/scene/juzizhou.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 橘子洲 </h3>
        <p>湘江名洲，西瞻岳麓，东临古城。</p>
        <a href="${pageContext.request.contextPath}/scene/sceneById?id=1" class="btn">景点详情</a>
      </div>
    </div>

    <div class="box">
      <img src="${pageContext.request.contextPath}/upload/scene/tiantan.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 天坛 </h3>
        <p>皇帝祭天、求雨的专用祭坛。</p>
        <a href="${pageContext.request.contextPath}/scene/sceneById?id=9" class="btn">景点详情</a>
      </div>
    </div>

    <div class="box">
      <img src="${pageContext.request.contextPath}/upload/scene/waitan.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 外滩 </h3>
        <p>风格迥异的万国建筑群和浦江夜景。</p>
        <a href="${pageContext.request.contextPath}/scene/sceneById?id=11" class="btn">景点详情</a>
      </div>
    </div>

  </div>
</section>
<!-- 相册部分 -->

<section class="gallery" id="gallery">

  <h1 class="heading">
    <span>推</span>
    <span>荐</span>
    <span>游</span>
    <span>记</span>
  </h1>

  <div class="box-container">

    <div class="box">
      <img src="${pageContext.request.contextPath}/upload/travelnote/travelnote1.jpg" alt="">
      <div class="content">
        <h3><small>岳麓山下几月天</small></h3>
        <p>长沙</p>
        <a href="${pageContext.request.contextPath}/travelnote/travelnoteById?id=3" class="btn2">查看</a>
      </div>
    </div>
    <div class="box">
      <img src="${pageContext.request.contextPath}/upload/travelnote/travelnotebeijing1.jpg" alt="">
      <div class="content">
        <h3><small>北京，迷失的塞外古城池</small></h3>
        <p>北京</p>
        <a href="${pageContext.request.contextPath}/travelnote/travelnoteById?id=4" class="btn2">查看</a>
      </div>
    </div>
    <div class="box">
      <img src="${pageContext.request.contextPath}/upload/travelnote/travelnotebeijing2.jpg" alt="">
      <div class="content">
        <h3><small>北京周边自驾集锦之夏</small></h3>
        <p>北京</p>
        <a href="${pageContext.request.contextPath}/travelnote/travelnoteById?id=5" class="btn2">查看 更多</a>
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