<%--
  Created by IntelliJ IDEA.
  User: Smart
  Date: 2020/5/28
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <title>书籍列表</title>
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
                            <small>书籍列表 —— 显示所有书籍</small>
                        </h1>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4 column">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/library/toAddBook">新 增 书 本</a>
                </div>
            </div>

            <br>

            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-hover table-striped">
                        <thead>
                        <tr>
                            <th>书籍编号</th>
                            <th>书籍名字</th>
                            <th>书籍数量</th>
                            <th>书籍详情</th>
                            <th>操作</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="book" items="${requestScope.get('list')}">
                            <tr>
                                <td>${book.getBkID()}</td>
                                <td>${book.getBkName()}</td>
                                <td>${book.getBkCounter()}</td>
                                <td>${book.getSummary()}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/library/toUpdateBook?id=${book.getBkID()}">更 改</a> |
                                    <a href="${pageContext.request.contextPath}/library/del/${book.getBkID()}">删 除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
