<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JQX
  Date: 2021/9/12
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的问题</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table table-hover table-striped">
            <thead>
            <tr>
                <th>我的问题</th>
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
                                <a class="btn btn-default" href="${pageContext.request.contextPath}/quest/updateStatus?id=${quest.id}" role="button">修改状态</a>
                            </c:when>
                            <c:when test="${quest.status == 2}"></c:when>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
