<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<body>
<div class="container">
    <div class="row clearfix text-center mt-4 text-secondary">
        <div class="col-md-12 column border-bottom">
            <h2>
                   书籍列表
            </h2>
        </div>
    </div>
    <div class="row clearfix">
        <div class="row">
            <div class="col-md-2 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">添加书籍</a>
            </div>
            <div class="col-md-2 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">显示全部书籍</a>
            </div>
            <div class="col-md-4  offset-md-4">
              <form class="row g-3" action="${pageContext.request.contextPath}/book/queryBook" method="post">
                  <input  class="col-auto" type="text" name="bookName" class="form-control ">
                  <input class="col-auto btn btn-primary" type="submit" class="btn btn-primary">
              </form>
            </div>
        </div>
        <div class="col-md-12 column">
            <table class="table table-hover table-striped text-center">
                <thead >
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名字</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookID}">修改</a> &nbsp; | &nbsp;
                                <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.bookID}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>

</div>

</body>
</html>
