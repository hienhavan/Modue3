<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/29/2024
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<center>
    <h1 class="text-primary">Thêm Mới User</h1>
    <form class="text-primary w-50" action="<%= request.getContextPath() %>/users" method="post">
        <label for="id">Id:</label><br>
        <input type="text" pattern="^[\d]+$" id="id" name="id"><br>
        <label for="name">Name:</label><br>
        <input type="text" id="name" name="name"><br>
        <label for="age">Age:</label><br>
        <input type="text" pattern="^[\d]+$" id="age" name="age"><br>
        <input class="btn btn-secondary mt-3" type="submit" value="ADD">
        <c:if test="${userId != null}">
            <p class="text-danger">Id đã tồn tại</p>
        </c:if>
    </form>
</center>
</body>
</html>
