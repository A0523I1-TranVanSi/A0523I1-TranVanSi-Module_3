<%--
  Created by IntelliJ IDEA.
  User: SY
  Date: 12/12/2023
  Time: 9:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Create Product</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<form method="post">
  <h2>Create New Product</h2>
  <div class="mb-3">
    <label for="formGroupExampleInput" class="form-label" >New Product Name</label>
    <input type="text" class="form-control" id="formGroupExampleInput" name="name">
  </div>
  <div class="mb-3">
    <label for="formGroupExampleInput1" class="form-label" >New Product Price</label>
    <input type="text" class="form-control" id="formGroupExampleInput1" name="price">
  </div>
  <div class="mb-3">
    <label for="formGroupExampleInput2" class="form-label" >New Product Description</label>
    <input type="text" class="form-control" id="formGroupExampleInput2" name="description" >
  </div>
  <div class="mb-3">
    <label for="formGroupExampleInput3" class="form-label" >New Producer</label>
    <input type="text" class="form-control" id="formGroupExampleInput3" name="producer">
  </div>
  <button type="submit" class="btn btn-success">Create</button>
  <br>
  <a class="btn btn-info" href="/ProductServlet" role="button">Back To Product</a>
</form>
</body>
</html>
