<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<form method="get" action="/ConverterServlet">
<div class="form-floating mb-3" style="width: 50%">
    <input type="text" name="rate" class="form-control" id="floatingRate" placeholder="23000">
    <label for="floatingRate">Rate</label>
</div>
<div class="form-floating" style="width: 50%">
    <input type="text" name="usd" class="form-control" id="floatingUsd" placeholder="0">
    <label for="floatingUsd">Usd</label>
</div>
<div class="col-12">
    <button class="btn btn-primary" type="submit">Submit</button>
</div>
</form>
</body>
</html>