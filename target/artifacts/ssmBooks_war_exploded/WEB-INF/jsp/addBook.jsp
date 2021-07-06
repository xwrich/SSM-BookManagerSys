<%--
  Created by IntelliJ IDEA.
  User: 
  DateTime: 2021/7/5 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h2>
                    <small>新增书籍</small>
                </h2>
            </div>
        </div>
    </div>

    <form action="/book/addBook" method="post">
        <div class="form-group">
            <label for="bName">名称</label>
            <input type="text" name="bookName" class="form-control" id="bName" required placeholder="请输入书籍名称">
        </div>
        <div class="form-group">
            <label for="bCounts">数量</label>
            <input type="text" name="bookCounts" class="form-control" id="bCounts" required placeholder="请输入书籍数量">
        </div>
        <div class="form-group">
            <label for="bSummary">简介</label>
            <input type="text" name="bookSummary" class="form-control" id="bSummary" required placeholder="请输入书籍简介">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-primary text-center" >添加图书</button>
        </div>

    </form>

</div>
</body>
</html>
