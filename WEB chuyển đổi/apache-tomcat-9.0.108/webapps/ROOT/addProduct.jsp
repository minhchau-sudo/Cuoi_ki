<%@ page contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm sản phẩm</title>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body class="container mt-5">

<h2>➕ Thêm sản phẩm</h2>

<form action="addProduct" method="post">

Tên sản phẩm

<input type="text"
name="tenSP"
class="form-control mb-3">

Giá

<input type="number"
name="gia"
class="form-control mb-3">

Mô tả

<textarea
name="moTa"
class="form-control mb-3"></textarea>

Link hình ảnh

<input type="text"
name="hinhAnh"
class="form-control mb-3">

<button class="btn btn-success">
Lưu
</button>

</form>

</body>
</html>