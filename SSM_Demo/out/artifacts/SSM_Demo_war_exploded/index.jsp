<%--
  Created by IntelliJ IDEA.
  User: 张卓
  Date: 2020/6/14
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>图书管理系统首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: white;
      font-size:28px;
    }
    h3 {
      width: 240px;
      height: 60px;
      margin: 60px auto;
      text-align: center;
      line-height: 50px;
      background: royalblue;
      border-radius: 4px;
    }
  </style>
</head>

<body>
<h3>
  <a href="${pageContext.request.contextPath}/library/allBooks">点击进入列表页</a>
</h3>
</body>

</html>
