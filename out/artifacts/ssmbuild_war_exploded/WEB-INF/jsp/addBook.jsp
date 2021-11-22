<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2021/11/21
  Time: 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix text-center mt-4 text-secondary">
        <div class="col-md-12 border-bottom " >
            <h2>
                增加书籍
            </h2>
        </div>
    </div>
<form action="${pageContext.request.contextPath}/book/addBook" method="post">
    <div class="form-group">

        <label> 书籍名称</label>
        <input type="text" name="bookName" class="form-control" required>
        <label> 书籍数量</label>
        <input type="text" name="bookCounts" class="form-control" required>
        <label> 书籍详情</label>
        <input type="text" name="detail" class="form-control" required>
        <input type="submit" class="btn btn-success" >
    </div>
</form>
</div>
</body>
</html>
