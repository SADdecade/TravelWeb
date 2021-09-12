<%--
  Created by IntelliJ IDEA.
  User: JQX
  Date: 2021/9/12
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增景点</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="co1-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增景点</small>
                </h1>
            </div>
        </div>
    </div>




    <form action="${pageContext.request.contextPath}/scene/addscene" enctype="multipart/form-data" method="post">
        <div class="form-group">
            <label >城市id</label>
            <input type="text" name="cityid" class="form-control" required>
        </div>
        <div class="form-group">
            <label>景点名称</label>
            <input type="text" name="scenename" class="form-control" required>
        </div>
        <div class="form-group">
            <label>地点</label>
            <input type="text" name="address" class="form-control" required>
        </div>
        <div class="form-group">
            <label>价格</label>
            <input type="text" name="price" class="form-control" required>
        </div>
        <div class="form-group">
            <label>介绍</label>
            <input type="text" name="intro" class="form-control" required>
        </div>
        <div class="form-group">
            <label>电话</label>
            <input type="text" name="tel" class="form-control" required>
        </div>
        <div class="form-group">
            <label>开放时间</label>
            <input type="text" name="opentime" class="form-control" required>
        </div>
        <div class="form-group">
            <label>贴士</label>
            <input type="text" name="tips" class="form-control" required>
        </div>
        <div class="form-group">
            <label>设施服务</label>
            <input type="text" name="services" class="form-control" required>
        </div>
        <div class="form-group">
        <input type="file" name="file">
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="添加">
        </div>

    </form>

</div>
</body>
</html>
