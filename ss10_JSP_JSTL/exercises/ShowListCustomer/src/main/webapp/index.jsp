<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<table class="table">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1>Danh Sách Khách Hàng</h1>
            </div>
        </div>
    <thead>
    <tr>
        <th scope="col">Tên</th>
        <th scope="col">Ngày Sinh</th>
        <th scope="col">Địa Chỉ</th>
        <th scope="col">Ảnh</th>
    </tr>
    </thead>
            <tbody>
                <c:forEach var="customer" items="${list}">
                    <tr>
                        <td>${customer.getName()}</td>
                        <td>${customer.getDateOfBirth()}</td>
                        <td>${customer.getAddress()}</td>
                        <td><img style="width: 60px; height: 60px"  src="${customer.getPathPicture()}" alt=""></td>
                    </tr>
                </c:forEach>
            </tbody>
    </div>
</table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>