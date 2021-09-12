<%--
  Created by IntelliJ IDEA.
  User: JQX
  Date: 2021/9/12
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>游记列表</title>
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


<body style="background:url(${pageContext.request.contextPath}/images/background3.png);background-size:cover;">


<!-- 搭建显示页面 -->
<div class="container" >
    <!-- 标题 -->
    <div class="row clearfix">
        <div class="co1-md-12 column">
            <div class="page-header">
                <h1>
                    <h1>游记查看</h1>
                </h1>
            </div>
        </div>
    </div>


    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <tr>
                    <th>游记标题</th>
                    <th class="text-center">操作</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="travelnote">
                    <tr>
                        <th>${travelnote.title}</th>
                        <th class="text-center">
                            <a class="btn btn-default" href="${pageContext.request.contextPath}/travelnote/travelnoteById?id=${travelnote.id}" role="button">详情</a>
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
                    <li><a href="${APP_PATH }/travelnote/queryAll?pn=1">首页</a></li>
                    <c:if test="${pageInfo.hasPreviousPage }">
                        <li><a href="${APP_PATH }/travelnote/queryAll?pn=${pageInfo.pageNum-1}"
                               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                        </a></li>
                    </c:if>


                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == pageInfo.pageNum }">
                            <li class="active"><a href="#">${page_Num }</a></li>
                        </c:if>
                        <c:if test="${page_Num != pageInfo.pageNum }">
                            <li><a href="${APP_PATH }/travelnote/queryAll?pn=${page_Num }">${page_Num }</a></li>
                        </c:if>

                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage }">
                        <li><a href="${APP_PATH }/travelnote/queryAll?pn=${pageInfo.pageNum+1 }"
                               aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                        </a></li>
                    </c:if>
                    <li><a href="${APP_PATH }/travelnote/queryAll?pn=${pageInfo.pages}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>


    <p class="text-center">
        <a class="btn btn-default" href="${pageContext.request.contextPath}/User/goMain" role="button">返回主页</a>

    </p>

</div>

</body>
</html>
