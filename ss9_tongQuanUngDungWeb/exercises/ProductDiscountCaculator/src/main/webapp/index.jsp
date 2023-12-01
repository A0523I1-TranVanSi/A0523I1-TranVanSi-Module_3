<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Product Discount Calculator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<form method="get" action="/ProductDiscountServlet">
    <div class="mb-3">
        <label for="formGroupExampleInput" class="form-label">Product Description</label>
        <input style="width: 30%" type="text" class="form-control" id="formGroupExampleInput" name="Description" placeholder="description">
    </div>
    <div class="mb-3">
        <label for="formGroupExampleInput2" class="form-label">List Price</label>
        <input style="width: 30%" type="text" class="form-control" id="formGroupExampleInput2" name="Price" placeholder="price">
    </div>
    <div class="mb-3">
        <label for="formGroupExampleInput3" class="form-label">Discount Percent</label>
        <input style="width: 30%" type="text" class="form-control" id="formGroupExampleInput3" name="Discount" placeholder="discount percent">
    </div>
    <button class="btn btn-danger">Calculate Discount</button>
</form>
</body>
</html>