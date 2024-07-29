<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tính giá trị chiết khấu</title>
</head>
<body>
<form action="tinhtoan" method="post">
    Product Description:<br>
    <input type="text" name="ProductDescription"><br>
    List Price:<br>
    <input type="text" pattern="^[\d]+$" name="Price"><br>
    Discount Percentage:<br>
    <input type="text" pattern="^[\d]+$" name="Discount"><br>
    <input type="submit" value="Calculate">
</form>
</body>
</html>