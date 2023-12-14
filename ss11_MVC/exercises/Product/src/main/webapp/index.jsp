<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>List Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<a class="btn btn-info" href="/ProductServlet?action=searchName" role="button">Search</a>
<table class="table">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
        <th scope="col">Description</th>
        <th scope="col">Producer</th>
        <th scope="col">Edit</th>
        <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>
        <c:forEach items='${requestScope["productList"]}' var="productList">
            <tr>
                <td><a href="/ProductServlet?action=view&id=${productList.getId()}">${productList.getProductName()}</a></td>
                <td>${productList.getProductPrice()}</td>
                <td>${productList.getProductDescription()}</td>
                <td>${productList.getProductDescription()}</td>
                <td>${productList.getProducer()}</td>
                <td><a href="/ProductServlet?action=edit&id=${productList.getId()}">Edit</a></td>
                <td><a href="/ProductServlet?action=delete&id=${productList.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a class="btn btn-info" href="/ProductServlet?action=create" role="button">Create</a>
</body>
</html>