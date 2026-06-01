<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="model.SanPham"%>

<%
SanPham sp =
(SanPham) request.getAttribute("sp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<title>Sửa sản phẩm</title>

</head>

<body class="container mt-5">

<h2>✏️ Sửa sản phẩm</h2>

<form action="editProduct" method="post">

<input type="hidden"
name="id"
value="<%=sp.getMaSP()%>">

Tên

<input type="text"
name="tenSP"
value="<%=sp.getTenSP()%>"
class="form-control mb-3">

Giá

<input type="number"
name="gia"
value="<%=sp.getGia()%>"
class="form-control mb-3">

Mô tả

<textarea
name="moTa"
class="form-control mb-3"><%=sp.getMoTa()%></textarea>

Hình ảnh

<input type="text"
name="hinhAnh"
value="<%=sp.getHinhAnh()%>"
class="form-control mb-3">

<button class="btn btn-warning">
Cập nhật
</button>

</form>

</body>
</html>