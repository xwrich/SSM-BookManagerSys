<%--
  Created by IntelliJ IDEA.
  User: 
  DateTime: 2021/7/5 0:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>书籍展示</title>
    <base href="${pageContext.request.contextPath}/">
    <%--导入BootStrap样式库--%>
    <link href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.css" rel="stylesheet">

    <style>
        .btn:focus,
        .btn:active:focus,
        .btn.active:focus,
        .btn.focus,
        .btn:active.focus,
        .btn.active.focus {
            outline: none;
            box-shadow: none;
        }


        .table th, .table td {
            text-align: center;
            vertical-align: middle !important;
        }

        table td {
            font-size: 10pt !important;
        }

    </style>

</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h2>
                    <small>书籍展示-----------显示所有书籍</small>
                </h2>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-4 col-md-offset-2">
                <%--toAddBook--%>
                <a class="btn btn-primary" href="/book/toAddBook">新增书籍</a>
                <a class="btn btn-primary" href="/book/allBook">显示全部书籍</a>
            </div>
            <div class="col-md-4 column">
                <%--查询书籍--%>
                <form action="/book/queryBook" method="post" class="form-inline" style="float: right">
                    <input type="text" id="queryBookName" name="queryBookName" class="form-control" required placeholder="请输入需要查询的书籍名称">
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped table-bordered">
                <tr>
                    <th>编号</th>
                    <th>名称</th>
                    <th>数量</th>
                    <th>简介</th>
                    <th>操作</th>
                </tr>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <th>${book.bookID}</th>
                        <th>${book.bookName}</th>
                        <th>${book.bookCounts}</th>
                        <th>${book.bookSummary}</th>
                        <td>
                            <a type="button" href="/book/toUpdateBook?id=${book.bookID}"
                               class="btn btn-warning btn-xs btn-edit"
                            >
                                <span class="glyphicon glyphicon-pencil"></span>修改
                            </a>
                            <a type="button" href="/book/deleteBook/${book.bookID}" class="btn btn-danger btn-xs">
                                <span class="glyphicon glyphicon-minus"></span>删除
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
<%--导入jquery的组件--%>
<%--<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>--%>
<%--导入layer弹层组件--%>
<%--<script src="https://cdn.bootcdn.net/ajax/libs/layer/3.5.1/layer.js"></script>--%>
<script>

    // $(function (){
    //     $('button').click(function (){
    //         var queryBookName = $('#queryBookName').val();
    //         if($.trim(queryBookName).length<1){
    //             layer.msg("请输入需要查询的书名！")
    //             $('#queryBookName').css('box-shadow', '0 0 10px #F56C6C');
    //             return;
    //         }
    //     })
    // })
</script>
</html>
