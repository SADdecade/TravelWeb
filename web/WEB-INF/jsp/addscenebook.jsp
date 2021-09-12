<%--
  Created by IntelliJ IDEA.
  User: JQX
  Date: 2021/9/11
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预定</title>


    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

</head>
<body>

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

        <form action="${pageContext.request.contextPath}/scenebook/addscenebook" method="post">

            <input type="hidden" name="sceneid" value="${sceneid}">

            <div class="inputBox">
                <h3>Userid</h3>
                <input type="text" name="userid" placeholder="请输入id">
            </div>

            <div class="inputBox">
                <h3>人数</h3>
                <input type="text" name="num" placeholder="请输入人数">
            </div>
            <div class="inputBox">
                <h3>多久到</h3>
                <input type="date" name="playdate"/>
            </div>
            <p class="text-center">
                <input type="submit" class="btn btn-default btn-lg" value="预定">
            </p>

        </form>

    </div>

</section>

</body>
</html>
