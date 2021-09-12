<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JQX
  Date: 2021/9/11
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>景点详情</title>

    <style type="text/css">

        img{

            width:800px;
            height:300px;
            margin: 0 auto;
            vertical-align:middle;
            border:0px solid ;
            opacity: 0.75;
        }

    </style>


    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>



<img src="${pageContext.request.contextPath}/upload/scene/${scene.picaddress}" class="img-responsive" alt="Responsive image">

    <div class="container">

        <div class="row clearfix">
            <div class="co1-md-12 column">
                <div class="page-header">
                    <h1>
                        ${scene.scenename}
                    </h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h2><small>地址</small></h2>
                <p>${scene.address}</p>
            </div>
            <div class="col-md-6">
                <h2><small>门票价格</small></h2>
                <p>${scene.price}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <h2><small>开放时间</small></h2>
                <p>${scene.opentime}</p>
            </div>
            <div class="col-md-6">
                <h2><small>景点电话</small></h2>
                <p>${scene.tel}</p>
            </div>
        </div>

        <h2><small>景点介绍</small></h2>
        <p>${scene.intro}</p>
        <h2><small>必看贴士</small></h2>
        <p>${scene.tips}</p>
        <h2><small>服务设施</small></h2>
        <p>${scene.services}</p>

        <p class="text-center">
            <a class="btn btn-default" href="${pageContext.request.contextPath}/scenebook/toaddscenebook?sceneid=${scene.id}" role="button">预定景点</a>
        </p>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>用户问答</th>
                        <th class="text-center">详情</th>
                        <th class="text-center">其他</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="quest" items="${scenequests}">
                        <tr>
                            <td>${quest.mainbody}</td>
                            <td class="text-center">
                                <a href="${pageContext.request.contextPath}/quest/questById?id=${quest.id}">查看</a>
                                &nbsp; &nbsp; | &nbsp;&nbsp;
                                <c:choose>
                                    <c:when test="${quest.status == 1}">未解决</c:when>
                                    <c:when test="${quest.status == 2}">已解决</c:when>
                                </c:choose>
                            </td>
                            <td class="text-center">
                                <c:choose>
                                    <c:when test="${quest.status == 1}">
                                        <a class="btn btn-default" href="${pageContext.request.contextPath}/quest/updateStatus?sceneid=${scene.id}&id=${quest.id}" role="button">修改状态</a>
                                    </c:when>
                                    <c:when test="${quest.status == 2}"></c:when>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>


        <p class="text-center">
            <a class="btn btn-default" href="${pageContext.request.contextPath}/User/goMain" role="button">返回主页</a>
        </p>

    </div>
    </div>
</body>
</html>
