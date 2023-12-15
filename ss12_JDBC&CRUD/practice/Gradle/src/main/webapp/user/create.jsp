<%--
  Created by IntelliJ IDEA.
  User: SY
  Date: 12/15/2023
  Time: 7:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>CREATE USER</title>
</head>
<body>
<center>
  <h1>User Management</h1>
    <a href="/users?action=users">List All Users</a>
</center>
<div>
    <form method="post">
        <table>
            <cation>
                <h2>Add New User</h2>
                <tr>
                    <th>User Name:</th>
                    <td>
                        <input type="text" name="name" id="name" size="45"/>
                    </td>
                </tr>
                <tr>
                    <th>User Email:</th>
                    <td>
                        <input type="text" name="email" id="email" size="45"/>
                    </td>
                </tr>
                <tr>
                    <th>User Country:</th>
                    <td>
                        <input type="text" name="country" id="country" size="45"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="save">
                    </td>
                </tr>
            </cation>
        </table>
    </form>
</div>
</body>
</html>
