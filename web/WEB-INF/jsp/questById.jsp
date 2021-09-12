<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JQX
  Date: 2021/9/12
  Time: 0:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>问题详情</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="co1-md-12 column">
            <div class="page-header">
                <h1>
                    ${quest.mainbody}
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户</th>
                    <th>回答详情</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach var="answer" items="${answers}">
                    <tr>
                        <td>${answer.userid}</td>
                        <td>${answer.text}</td>
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
