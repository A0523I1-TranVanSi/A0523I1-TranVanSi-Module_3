<%--
  Created by IntelliJ IDEA.
  User: SY
  Date: 12/15/2023
  Time: 6:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>LIST USER</title>
</head>
<body>
<center>
    <h1>
        User Management
    </h1>
    <h2>
        <a href="/users?action=create">Add new user</a>
    </h2>
</center>
<div align="center">
    <table border="1" cellpadding="5" >
        <caption><h2>List Of User</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Action</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"></c:out></td>
                <td><c:out value="${user.name}"></c:out></td>
                <td><c:out value="${user.email}"></c:out></td>
                <td><c:out value="${user.country}"></c:out></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">edit</a>
                    <a href="/users?action=delete&id=${user.id}">delete</a>
                </td>

            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
