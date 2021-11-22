<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix text-center mt-4 text-secondary">
        <div class="col-md-12 border-bottom" >
            <h2>
                修改书籍
            </h2>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
        <div class="form-group">
            <input type="hidden" name="bookID" value="${QBook.bookID}"/>
            <label> 书籍名称</label>
            <input type="text" name="bookName" class="form-control" value="${QBook.bookName}">
            <label> 书籍数量</label>
            <input type="text" name="bookCounts" class="form-control" value="${QBook.bookCounts}">
            <label> 书籍详情</label>
            <input type="text" name="detail" class="form-control" value="${QBook.detail}">
            <input type="submit" class="btn btn-success" >
        </div>
    </form>
</div>
</body>
</html>