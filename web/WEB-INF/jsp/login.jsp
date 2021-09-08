<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
  <form action="${pageContext.request.contextPath}/User/addUser" method="post">
    <input type="text" name="username" required>
    <input type="password" name="password" required>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
  </body>
</html>
