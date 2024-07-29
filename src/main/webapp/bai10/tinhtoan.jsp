<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        .label.input.select.option {
            font-size: 30px;
            color: red;
        }

        .nen {
            width: 40%;
            height: auto;
            background: bisque;
            border: 1px solid rosybrown

        }
    </style>
</head>
<body>
<div class="nen">
    <h1>A Simple Calculator</h1>

    <form>

        <table>
            <tr>
                <td class="label"> Enter operand 1:</td>
                <td><input type="text" name="num1" value="${param.num1}"></td>
            </tr>
            <tr>
                <td class="label"> Enter operand 2:</td>
                <td><input type="text" name="num2" value="${param.num2}"></td>
            </tr>
            <tr>
                <td class="label"> Select operation:</td>
                <td>
                    <select name="op">
                        <option value="+">+</option>
                        <option value="-">-</option>
                        <option value="*">*</option>
                        <option value=":">:</option>

                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Tinh Toan"/></td>
                </td>

            </tr>
        </table>

    </form>
    <hr/>
    <h2>
        <jsp:useBean id="c" class="module3.bai10.Math"/>
        <jsp:setProperty name="c" property="*"/>
        <jsp:getProperty name="c" property="result"/>
    </h2>
</div>
</body>
</html>
