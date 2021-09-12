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
    <script>
        if("${msg}" != ""){
            alert("${msg}");
        }
    </script>
    <c:remove var="msg"></c:remove>
</head>
<body>
<!-- 搭建显示页面 -->
<div class="container-fluid">
    <!-- 标题 -->
    <div class="row">
        <form action="${pageContext.request.contextPath}/Manager/scene" method="post" class="form-inline">
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
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/scene/toaddscene">新增景区</a>
        </form>
    </div>
    <!-- 显示表格数据 -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover">
                <tr>
                    <th>#</th>
                    <th>景区名</th>
                    <th>地址</th>
                    <th>城市ID</th>
                    <th>价格</th>
                    <th>操作</th>
                </tr>
                <c:forEach items="${pageInfo.list}" var="emp">
                    <tr>
                        <th>${emp.id }</th>
                        <th>${emp.scenename }</th>
                        <th>${emp.cityid}</th>
                        <th>${emp.address }</th>
                        <th>${emp.price }</th>
                        <th>
                            <a class="btn btn-default" href="${pageContext.request.contextPath}/scene/sceneById?id=${emp.id}" role="button" target="_blank">详情</a>
                            &nbsp; | &nbsp;
                            <a class="btn btn-default" href="${pageContext.request.contextPath}/scene/toupdatescene?id=${emp.id}" role="button">修改</a>
                            &nbsp; | &nbsp;
                            <a class="btn btn-default" href="${pageContext.request.contextPath}/scene/deletescene?id=${emp.id}" role="button">删除</a>
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
                    <li><a href="${APP_PATH }/Manager/scene?pn=1&scenename=${param.scenename}&cityid=${param.cityid}">首页</a></li>
                    <c:if test="${pageInfo.hasPreviousPage }">
                        <li><a href="${APP_PATH }/Manager/scene?pn=${pageInfo.pageNum-1}&scenename=${param.scenename}&cityid=${param.cityid}"
                               aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                        </a></li>
                    </c:if>


                    <c:forEach items="${pageInfo.navigatepageNums }" var="page_Num">
                        <c:if test="${page_Num == pageInfo.pageNum }">
                            <li class="active"><a href="#">${page_Num }</a></li>
                        </c:if>
                        <c:if test="${page_Num != pageInfo.pageNum }">
                            <li><a href="${APP_PATH }/Manager/scene?pn=${page_Num }&scenename=${param.scenename}&cityid=${param.cityid}">${page_Num }</a></li>
                        </c:if>

                    </c:forEach>
                    <c:if test="${pageInfo.hasNextPage }">
                        <li><a href="${APP_PATH }/Manager/scene?pn=${pageInfo.pageNum+1 }&scenename=${param.scenename}&cityid=${param.cityid}"
                               aria-label="Next"> <span aria-hidden="true">&raquo;</span>
                        </a></li>
                    </c:if>
                    <li><a href="${APP_PATH }/Manager/scene?pn=${pageInfo.pages}&scenename=${param.scenename}&cityid=${param.cityid}">末页</a></li>
                </ul>
            </nav>
        </div>
    </div>

</div>
</body>
</html>

