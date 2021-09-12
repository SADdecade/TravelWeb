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

<img src="${pageContext.request.contextPath}/upload/travelnote/${travelNote.picaddress}" class="img-responsive" alt="Responsive image">

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





<p class="text-center">
    <a class="btn btn-default" href="${pageContext.request.contextPath}/User/goMain" role="button">返回主页</a>

</p>


</div>




</body>
</html>
