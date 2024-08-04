<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/4/2024
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<select  id="productSelect" >
    <option value="all">Tất cả</option>
    <c:forEach  var="wallets" items="${wallet}">
        <option value="${wallets.idWallet}">STK:${wallets.codeWallet}</option>
    </c:forEach>
</select>
</body>
</html>
