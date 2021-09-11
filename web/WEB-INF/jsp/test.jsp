<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
    <script>
        function filechange(){
            $.ajaxFileUpload(){

            }
        }
    </script>
</head>
<body>

<form action="${pageContext.request.contextPath}/upload" enctype="multipart/form-data" method="post">
    <input type="file" name="file">
    <input type="submit" value="upload">
</form>

<div>
    <img src="${pageContext.request.contextPath}/upload/捕获.PNG">
</div>
</body>
</html>
