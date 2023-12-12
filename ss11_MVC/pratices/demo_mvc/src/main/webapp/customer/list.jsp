<%--
  Created by IntelliJ IDEA.
  User: SY
  Date: 12/7/2023
  Time: 6:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/CustomerServlet?action=create">Create new customer</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="customer" items='${requestScope["customerList"]}'>
        <tr>
            <td><a href="/CustomerServlet?action=view&id=${customer.getId}">${customer.getName}</a></td>
            <td>${customer.getEmail}</td>
            <td>${customer.getAddress}</td>
            <td><a href="/CustomerServlet?action=edit&id=${customer.getId}">edit</a></td>
            <td><a href="/CustomerServlet?action=delete&id=${customer.getId}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
