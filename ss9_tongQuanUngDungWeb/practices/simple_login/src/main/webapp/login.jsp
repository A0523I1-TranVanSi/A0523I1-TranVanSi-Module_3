<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: SY
  Date: 12/1/2023
  Time: 8:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  String userName = request.getParameter("userName");
  Date loginTime = (Date) request.getAttribute("loginTime");
%>
<h3><%=userName%></h3>
<h3>Time Login <%=loginTime%></h3>
</body>
</html>
