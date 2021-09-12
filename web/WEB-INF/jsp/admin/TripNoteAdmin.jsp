<%@ page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>景点列表</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <script type="text/javascript"
            src="${APP_PATH }/js/bootstrap.min.js"></script>
    <link
            href="${APP_PATH }/css/bootstrap.min.css"
            rel="stylesheet">
    <script
            src="${APP_PATH }/js/jquery-3.6.0.js"></script>
</head>
<body>
<!-- 搭建显示页面 -->
<div class="container-fluid">
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <tr>
                    <th>标题</th>
                    <th>城市</th>
                    <th>发布时间</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="emp">
                    <tr>
                        <th>${emp.title }</th>
                        <th>
                            <c:choose>
                            <c:when test="${emp.cityid == 1 }">长沙</c:when>
                            <c:when test="${emp.cityid == 2 }">北京</c:when>
                            <c:when test="${emp.cityid == 3 }">上海</c:when>
                        </c:choose>
                        </th>
                        <th>${emp.time}</th>
                        <th><c:choose>
                            <c:when test="${emp.status == 1}">未发布</c:when>
                            <c:when test="${emp.status == 2}">已发布</c:when>
                        </c:choose>
                        </th>
                        <th>
                            <a href="${pageContext.request.contextPath}">详情</a>|
                            <a href="${pageContext.request.contextPath}">修改</a>|
                            <a href="${pageContext.request.contextPath}">删除</a>
                        </th>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <!-- 显示分页信息 -->
    <div class="row">
        <!--分页文字信息  -->
        <div class="col-md-6">当前 ${pageInfo.pageNum }页,总${pageInfo.pages }
            页,总 ${pageInfo.total } 条记录</div>
        <!-- 分页条信息 -->
        <div class="col-md-6">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li><a href="${APP_PATH }/Admin/onestrip">首页</a></li>
                    <c:if test="${pageInfo.hasPreviousPage }">
                        <li><a href="${APP_PATH }/Admin/onestrip"
                               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                        </a></li>
                    </c:if>


                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == pageInfo.pageNum }">
                            <li class="active"><a href="#">${page_Num }</a></li>
                        </c:if>
                        <c:if test="${page_Num != pageInfo.pageNum }">
                            <li><a href="${APP_PATH }/Admin/onestrip">${page_Num }</a></li>
                        </c:if>

                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage }">
                        <li><a href="${APP_PATH }/Admin/onestrip"
                               aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                        </a></li>
                    </c:if>
                    <li><a href="${APP_PATH }/Admin/onestrip">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>

</div>
</body>
</html>

