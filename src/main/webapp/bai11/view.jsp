<%@ page import="controller.bai11.model.User" %>
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
<h1 style="display: flex;justify-content: center">thong tin khach hang</h1>
<table class="table table-bordered table-striped">
    <tr>
        <th class="text-success text-center initialism">id</th>
        <th class="text-success text-center initialism">ten</th>
        <th class="text-success text-center initialism">tuoi</th>
    </tr>
    <c:forEach var="user" items="${date}">
        <tr>
            <td class="text-center initialism"><c:out value="${user.id}"/></td>
            <td class="text-center initialism"><c:out value="${user.name}"/></td>
            <td class="text-center initialism"><c:out value="${user.age}"/></td>
        </tr>
    </c:forEach>
<%--            <%--%>
<%--                List<User> list = (List<User>) request.getAttribute("user");--%>
<%--                for (User i : list) {--%>
<%--            %>--%>
<%--        <tr>--%>
<%--            <td class="text-center initialism"><%=i.getId() %>--%>
<%--            </td>--%>
<%--            <td class="text-center initialism"><%=i.getName()%>--%>
<%--            </td>--%>
<%--            <td class="text-center initialism"><%=i.getAge()%>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--            <%--%>
<%--                }--%>
<%--            %>--%>
</table>
</body>
</html>
