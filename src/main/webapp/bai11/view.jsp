<%@ page import="module3.bai11.model.User" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<script>
    function dodelete(id) {
        event.preventDefault();
        var r = confirm("Bạn có chắc muốn xóa?");
        if (r == true) {
            fetch("users?id=" + encodeURIComponent(id), {
                method: 'DELETE'
            })
                .then(response => response.text())
                .then(result => {
                    alert("Xóa thành công!");
                    window.location.reload();
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert("Xóa thất bại!");
                });
        }
    }

    function updata(id) {
        event.preventDefault();
        var name = prompt("nhập tên");
        var age = prompt("nhập tuổi");
        fetch("users?id=" + encodeURIComponent(id) + "&name=" + encodeURIComponent(name) + "&age=" + encodeURIComponent(age), {
            method: 'PUT'
        }).then(response => response.text())
            .then(result => {
                alert("sửa thành công!");
                window.location.reload();
            })

    }
</script>
<h1 style="display: flex;justify-content: center" class="text-success">thông tin khách hàng</h1>
<table class="table table-bordered table-striped">
    <h4><a href="bai11/add.jsp">Add User</a></h4>
    <tr>
        <th class="text-success text-center initialism">id</th>
        <th class="text-success text-center initialism">tên</th>
        <th class="text-success text-center initialism">tuổi</th>
        <th class="text-success text-center initialism">action</th>
    </tr>
    <c:forEach var="user" items="${data}">
        <c:set var="id" value="${user.id}"/>
        <tr>
            <td class="text-center initialism"><c:out value="${user.id}"/></td>
            <td class="text-center initialism"><c:out value="${user.name}"/></td>
            <td class="text-center initialism"><c:out value="${user.age}"/></td>
            <td class="text-center initialism" style="width: 15%">
                <button class="btn btn-secondary m-3"><a class="text-white " onclick="updata(${id})">Updata</a>
                </button>
                <button class="btn btn-secondary m-3"><a class="text-white "
                                                         onclick="dodelete(${id})">Delete</a>
                </button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
