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

<body style="background:url(${pageContext.request.contextPath}/images/background.png);background-size:cover;">



<!-- 搭建显示页面 -->
<div class="container" >
    <!-- 标题 -->
    <div class="row clearfix">
        <div class="co1-md-12 column">
            <div class="page-header">
                <h1>
                    <h1>景点</h1>
                </h1>
            </div>
        </div>
    </div>

    <div class="row">
        <form action="${pageContext.request.contextPath}/scene/queryall" method="post" class="form-inline">
            <input name="scenename" class="input-group" type="text">
            <select name="cityid" class="form-select-button">
                <option value="0" selected>全部</option>
                <c:forEach items="${citylist}" var="city">
                    <option value="${city.id}">${city.name}</option>
                </c:forEach>
            </select>
            <button type="submit" class="btn btn-default btn-sm">
                搜索
            </button>
            <br>
        </form>

        <br>
    </div>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <tr>
                    <th>景区名</th>
                    <th>城市</th>
                    <th>地址</th>
                    <th>价格</th>
                    <th class="text-center">操作</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="emp">
                    <tr>
                        <th>${emp.scenename}</th>
                        <th>
                            <c:choose>
                                <c:when test="${emp.cityid == 1 }">长沙</c:when>
                                <c:when test="${emp.cityid == 2 }">北京</c:when>
                                <c:when test="${emp.cityid == 3 }">上海</c:when>
                            </c:choose>
                        </th>
                        <th>${emp.address }</th>
                        <th>${emp.price }</th>
                        <th class="text-center">
                            <a class="btn btn-default" href="${pageContext.request.contextPath}/scene/sceneById?id=${emp.id}" role="button">详情</a>
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
                    <li><a href="${APP_PATH }/scene/queryall?pn=1&scenename=${param.scenename}&cityid=${param.cityid}">首页</a></li>
                    <c:if test="${pageInfo.hasPreviousPage }">
                        <li><a href="${APP_PATH }/scene/queryall?pn=${pageInfo.pageNum-1}&scenename=${param.scenename}&cityid=${param.cityid}"
                               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                        </a></li>
                    </c:if>


                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == pageInfo.pageNum }">
                            <li class="active"><a href="#">${page_Num }</a></li>
                        </c:if>
                        <c:if test="${page_Num != pageInfo.pageNum }">
                            <li><a href="${APP_PATH }/scene/queryall?pn=${page_Num }&scenename=${param.scenename}&cityid=${param.cityid}">${page_Num }</a></li>
                        </c:if>

                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage }">
                        <li><a href="${APP_PATH }/scene/queryall?pn=${pageInfo.pageNum+1 }&scenename=${param.scenename}&cityid=${param.cityid}"
                               aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                        </a></li>
                    </c:if>
                    <li><a href="${APP_PATH }/scene/queryall?pn=${pageInfo.pages}&scenename=${param.scenename}&cityid=${param.cityid}">末页</a></li>
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
