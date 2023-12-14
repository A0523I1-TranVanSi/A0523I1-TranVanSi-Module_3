<%--
  Created by IntelliJ IDEA.
  User: SY
  Date: 12/12/2023
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Delete Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<h2>Are you sure ?</h2>
<form method="post">
    <table>
        <tr>
            <td>Name Product : </td>
            <td>${requestScope["product"].getProductName()}</td>
        </tr>
        <tr>
            <td>Price Product: </td>
            <td>${requestScope["product"].getProductPrice()}</td>
        </tr>
        <tr>
            <td>Description Product: </td>
            <td>${requestScope["product"].getProductDescription()}</td>
        </tr>
        <tr>
            <td>Producer: </td>
            <td>${requestScope["product"].getProducer()}</td>
        </tr>
    </table>
    <button type="submit" class="btn btn-success">Delete Product</button>
    <br>
    <a class="btn btn-info" href="/ProductServlet" role="button">Back To Product</a>
</form>

</body>
</html>
