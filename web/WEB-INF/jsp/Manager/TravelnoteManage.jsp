<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: JQX
  Date: 2021/9/12
  Time: 17:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>游记查看</title>
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
                        &nbsp; | &nbsp;
                        <a href="${pageContext.request.contextPath}/travelnote/deletetravelnote?id=${travelnote.id}">删除</a>
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
                <li><a href="${APP_PATH }/Manager/travelnote?pn=1">首页</a></li>
                <c:if test="${pageInfo.hasPreviousPage }">
                    <li><a href="${APP_PATH }/Manager/travelnote?pn=${pageInfo.pageNum-1}"
                           aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                    </a></li>
                </c:if>


                <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                    <c:if test="${page_Num == pageInfo.pageNum }">
                        <li class="active"><a href="#">${page_Num }</a></li>
                    </c:if>
                    <c:if test="${page_Num != pageInfo.pageNum }">
                        <li><a href="${APP_PATH }/Manager/travelnote?pn=${page_Num }">${page_Num }</a></li>
                    </c:if>

                </c:forEach>
                <c:if test="${pageInfo.hasNextPage }">
                    <li><a href="${APP_PATH }/Manager/travelnote?pn=${pageInfo.pageNum+1 }"
                           aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                    </a></li>
                </c:if>
                <li><a href="${APP_PATH }/Manager/travelnote?pn=${pageInfo.pages}">末页</a></li>
            </ul>
        </nav>
    </div>
</div>

</body>
</html>
