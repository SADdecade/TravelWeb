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
</head>
<body>
<!-- 头部 -->
<header>
  <div id="menu-bar" class="fas fa-bars"></div>
  <a href="#" class="logo"><span>K</span>arma</a>
  <nav class="navbar">
    <a href="#home">首页</a>
    <a href="#book">预定</a>
    <a href="#packages">套餐</a>
    <a href="#services">服务</a>
    <a href="#gallery">相册</a>
    <a href="#review">评价</a>
    <a href="#contact">联系我们</a>
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
  <form action="${pageContext.request.contextPath}/User/addUser" method="post">
    <h3>登录</h3>
    <input type="text" class="box" placeholder="请输入用户名">
    <input type="password" class="box" placeholder="请输入密码">
    <input type="submit" value="login now" class="btn">
    <input type="checkbox" id="remember">
    <label for="remember">remember me</label>
    <p>forget password? <a href="#">click here</a></p>
    <p>don't have any account? <a href="#">register now</a></p>
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
        <h3>where to</h3>
        <input type="text" placeholder="去哪里">
      </div>
      <div class="inputBox">
        <h3>how many</h3>
        <input type="number" placeholder="多少人用行">
      </div>
      <div class="inputBox">
        <h3>多久到</h3>
        <input type="date">
      </div>
      <div class="inputBox">
        <h3>多久离开</h3>
        <input type="date">
      </div>
      <input type="submit" class="btn" value="立即 预定">
    </form>

  </div>

</section>

<!-- 套餐部分 -->

<section class="packages" id="packages">

  <h1 class="heading">
    <span>p</span>
    <span>a</span>
    <span>c</span>
    <span>k</span>
    <span>a</span>
    <span>g</span>
    <span>e</span>
    <span>s</span>
  </h1>

  <div class="box-container">

    <div class="box">
      <img src="${pageContext.request.contextPath}/images/p-1.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 成都 </h3>
        <p>和我在成都的街头走一走。</p>
        <div class="stars">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>
        </div>
        <div class="price"> $90.00 <span>$120.00</span> </div>
        <a href="#" class="btn">立即 预订</a>
      </div>
    </div>
    <div class="box">
      <img src="${pageContext.request.contextPath}/images/p-2.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 上海 </h3>
        <p>这里有你梦想中的迪士尼。</p>
        <div class="stars">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>
        </div>
        <div class="price"> $90.00 <span>$120.00</span> </div>
        <a href="#" class="btn">立即 预订</a>
      </div>
    </div>

    <div class="box">
      <img src="${pageContext.request.contextPath}/images/p-3.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 广州 </h3>
        <p>两千多年沉淀，打磨出中国独树一帜的海阔天空之城。</p>
        <div class="stars">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>
        </div>
        <div class="price"> $90.00 <span>$120.00</span> </div>
        <a href="#" class="btn">立即 预订</a>
      </div>
    </div>

    <div class="box">
      <img src="${pageContext.request.contextPath}/images/p-4.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 深圳 </h3>
        <p>有钱人的天堂.创业者向往的城市。</p>
        <div class="stars">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>
        </div>
        <div class="price"> $90.00 <span>$120.00</span> </div>
        <a href="#" class="btn">立即 预订</a>
      </div>
    </div>

    <div class="box">
      <img src="${pageContext.request.contextPath}/images/p-5.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 北京 </h3>
        <p>北京你爱来不来。</p>
        <div class="stars">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>
        </div>
        <div class="price"> $90.00 <span>$120.00</span> </div>
        <a href="#" class="btn">立即 预订</a>
      </div>
    </div>

    <div class="box">
      <img src="${pageContext.request.contextPath}/images/p-6.jpg" alt="">
      <div class="content">
        <h3> <i class="fas fa-map-marker-alt"></i> 武汉 </h3>
        <p style="font-size: 0.75rem;">武汉的樱花有如我和你初见时的阳光只是多了一些忧愁。</p>
        <div class="stars">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="far fa-star"></i>
        </div>
        <div class="price"> $90.00 <span>$120.00</span> </div>
        <a href="#" class="btn">立即 预订</a>
      </div>
    </div>
  </div>
</section>
<!-- 服务部分 -->
<section class="services" id="services">

  <h1 class="heading">
    <span>s</span>
    <span>e</span>
    <span>r</span>
    <span>v</span>
    <span>i</span>
    <span>c</span>
    <span>e</span>
    <span>s</span>
  </h1>

  <div class="box-container">

    <div class="box">
      <i class="fas fa-hotel"></i>
      <h3>affordable hotels</h3>
      <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
    </div>
    <div class="box">
      <i class="fas fa-utensils"></i>
      <h3>food and drinks</h3>
      <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
    </div>
    <div class="box">
      <i class="fas fa-bullhorn"></i>
      <h3>safty guide</h3>
      <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
    </div>
    <div class="box">
      <i class="fas fa-globe-asia"></i>
      <h3>around the world</h3>
      <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
    </div>
    <div class="box">
      <i class="fas fa-plane"></i>
      <h3>fastest travel</h3>
      <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
    </div>
    <div class="box">
      <i class="fas fa-hiking"></i>
      <h3>adventures</h3>
      <p>xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx</p>
    </div>

  </div>
</section>
<!-- 相册部分 -->

<section class="gallery" id="gallery">

  <h1 class="heading">
    <span>g</span>
    <span>a</span>
    <span>l</span>
    <span>l</span>
    <span>e</span>
    <span>r</span>
    <span>y</span>
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
    <div class="box">
      <img src="${pageContext.request.contextPath}/images/g-5.jpg" alt="">
      <div class="content">
        <h3>美丽景色</h3>
        <p>这是你梦中向往的地方</p>
        <a href="#" class="btn">查看 更多</a>
      </div>
    </div>
    <div class="box">
      <img src="${pageContext.request.contextPath}/images/g-6.jpg" alt="">
      <div class="content">
        <h3>美丽景色</h3>
        <p>这是你梦中向往的地方</p>
        <a href="#" class="btn">查看 更多</a>
      </div>
    </div>
    <div class="box">
      <img src="${pageContext.request.contextPath}/images/g-7.jpg" alt="">
      <div class="content">
        <h3>美丽景色</h3>
        <p>这是你梦中向往的地方</p>
        <a href="#" class="btn">查看 更多</a>
      </div>
    </div>
    <div class="box">
      <img src="${pageContext.request.contextPath}/images/g-8.jpg" alt="">
      <div class="content">
        <h3>美丽景色</h3>
        <p>这是你梦中向往的地方</p>
        <a href="#" class="btn">查看 更多</a>
      </div>
    </div>
    <div class="box">
      <img src="${pageContext.request.contextPath}/images/g-9.jpg" alt="">
      <div class="content">
        <h3>美丽景色</h3>
        <p>这是你梦中向往的地方</p>
        <a href="#" class="btn">查看 更多</a>
      </div>
    </div>
  </div>
</section>
<!-- 联系我们 -->
<section class="contact" id="contact">

  <h1 class="heading">
    <span>c</span>
    <span>o</span>
    <span>n</span>
    <span>t</span>
    <span>a</span>
    <span>c</span>
    <span>t</span>
  </h1>

  <div class="row">

    <div class="image">
      <img src="${pageContext.request.contextPath}/images/contact-img.svg" alt="">
    </div>

    <form action="">
      <div class="inputBox">
        <input type="text" placeholder="您的姓名">
        <input type="email" placeholder="您的邮箱">
      </div>
      <div class="inputBox">
        <input type="number" placeholder="您的电话">
        <input type="text" placeholder="反馈主题">
      </div>
      <textarea placeholder="您反馈的内容" name="" id="" cols="30" rows="10"></textarea>
      <input type="submit" class="btn" value="发送给我们">
    </form>

  </div>

</section>

<!-- 底部 -->

<section class="footer">

  <div class="box-container">

    <div class="box">
      <h3>关于我们</h3>
      <p>xxxxxx</p>
    </div>
    <div class="box">
      <h3>分支机构位置</h3>
      <a href="#">成都</a>
      <a href="#">北京</a>
      <a href="#">上海</a>
      <a href="#">深圳</a>
    </div>
    <div class="box">
      <h3>快速链接</h3>
      <a href="#home">home</a>
      <a href="#book">book</a>
      <a href="#packages">packages</a>
      <a href="#services">services</a>
      <a href="#gallery">gallery</a>
      <a href="#review">review</a>
      <a href="#contact">contact</a>
    </div>
    <div class="box">
      <h3>关于我们</h3>
      <a href="#">weibo</a>
      <a href="#">qq</a>
      <a href="#">twitter</a>
      <a href="#">wechat</a>
    </div>

  </div>

  <h1 class="credit"> created by <span> JackySei </span> | all rights reserved! </h1>

</section>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>