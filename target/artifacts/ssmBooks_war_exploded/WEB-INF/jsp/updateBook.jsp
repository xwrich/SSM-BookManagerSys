<%--
  Created by IntelliJ IDEA.
  User: 
  DateTime: 2021/7/5 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/">
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">
    <title>修改书籍</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h2>
                    <small>修改书籍</small>
                </h2>
            </div>
        </div>
    </div>

    <form action="/book/updateBook" method="post">

        <%--前端传递隐藏域--%>
        <input type="hidden" name="bookID" value="${QBook.bookID}">
        
        <div class="form-group">
            <label for="bName">名称</label>
            <input type="text" name="bookName" class="form-control" value="${QBook.bookName}" id="bName" required placeholder="请输入书籍名称">
        </div>
        <div class="form-group">
            <label for="bCounts">数量</label>
            <input type="text" name="bookCounts" class="form-control" value="${QBook.bookCounts}" id="bCounts" required placeholder="请输入书籍数量">
        </div>
        <div class="form-group">
            <label for="bSummary">简介</label>
            <input type="text" name="bookSummary" class="form-control" value="${QBook.bookSummary}" id="bSummary" required placeholder="请输入书籍简介">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-primary text-center" >修改</button>
        </div>

    </form>

</div>
</body>
</html>
