<%--
  Created by IntelliJ IDEA.
  User: SY
  Date: 12/15/2023
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<center>
  <h1>User Management</h1>
  <h2>
    <a href="/users?action=users">List All User</a>
  </h2>
</center>
<div align="center">
  <form method="post">
    <table border="1" cellpadding="5">
      <caption>
        <h2>Edit User</h2>
      </caption>
      <c:if test="${newUser != null }">
        <input type="hidden" value="<c:out value='${newUser.id}'/>" name="id">
      </c:if>
      <tr>
        <th>User Name : </th>
        <td>
          <input type="text" name="name" size="45" value="<c:out value='${newUser.name}'/>">
        </td>
      </tr>
      <tr>
        <th>User Email : </th>
        <td>
          <input type="text" name="email" size="45" value="<c:out value='${newUser.email}'/>">
        </td>
      </tr>
      <tr>
        <th>User Country : </th>
        <td>
          <input type="text" name="country" size="45" value="<c:out value='${newUser.country}'/>">
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <input type="submit" value="Save"/>
        </td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>
