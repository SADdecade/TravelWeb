<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JQX
  Date: 2021/9/11
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游记详情</title>

    <style type="text/css">

        div::after {
            content: "";
            background: url(${pageContext.request.contextPath}/upload/travelnote/${travelNote.picaddress}) no-repeat;
            background-size: cover;
            opacity: 0.2;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            position: absolute;
            z-index: -1;
        }


    </style>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<%--<img src="${pageContext.request.contextPath}/upload/travelnote/${travelNote.picaddress}" class="img-responsive" alt="Responsive image">--%>

<div class="container">
    <div class="row clearfix">
        <div class="co1-md-12 column">
            <div class="page-header">
                <h1>
                    ${travelNote.title}
                </h1>
            </div>
        </div>
    </div>


        <table class="table">
            <tr>
                <td>天数：${travelNote.duringtime}</td>
                <td>时间：${travelNote.triptime}</td>
                <td>人均：${travelNote.moneyspend}</td>
                <td>和谁：${travelNote.withwho}</td>
            </tr>
        </table>

    <h2><small>游记详情</small></h2>

        <p>${travelNote.mainbody}</p>

    <p class="text-right">${travelNote.time}</p>


    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th class="text-center">id</th>
                    <th class="text-center">详情</th>
                    <th class="text-center">评论时间</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="travelcomment" items="${travelcomments}">
                    <tr>
                        <td>${travelcomment.userid}</td>
                        <td>${travelcomment.mainbody}</td>
                        <td>${travelcomment.time}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>


<p class="text-center">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/User/goMain" role="button">返回主页</a>

</p>


</div>




</body>
</html>
