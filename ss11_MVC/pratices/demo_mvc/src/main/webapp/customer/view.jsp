<%--
  Created by IntelliJ IDEA.
  User: SY
  Date: 12/8/2023
  Time: 8:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
</head>
<body>
<h1>Customer Details</h1>
<p>
  <a href="/CustomerServlet">Back To Customer List</a>
</p>
<table>
  <tr>
    <td>Name : </td>
    <td>${requestScope["customer"].getName()}</td>
  </tr>
  <tr>
    <td>Email : </td>
    <td>${requestScope["customer"].getEmail()}</td>
  </tr>
  <tr>
    <td>Address : </td>
    <td>${requestScope["customer"].getAddress()}</td>
  </tr>
</table>
</body>
</html>
