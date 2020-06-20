<%--
  Created by IntelliJ IDEA.
  User: Smart
  Date: 2020/5/28
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<html>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <head>
        <title>新增书籍</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- 引入 Bootstrap -->
        <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    </head>

    <body>
        <div class="container">

            <div class="row clearfix">
                <div class="col-md-12 column">
                    <div class="page-header">
                        <h1>
                            <small>新增书籍</small>
                        </h1>
                    </div>
                </div>
            </div>
            <form action="${pageContext.request.contextPath}/library/addBook" method="post">
                书籍名称：<input type="text" name="bkName"><br><br><br>
                书籍数量：<input type="text" name="bkCounter"><br><br><br>
                书籍详情：<input type="text" name="summary"><br><br><br>
                <input type="submit" value="添加">
            </form>

        </div>
    </body>

</html>
