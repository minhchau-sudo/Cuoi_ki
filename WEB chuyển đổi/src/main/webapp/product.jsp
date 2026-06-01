<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="model.SanPham"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Quản lý sản phẩm</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-4">

<h1 class="text-center text-primary mb-4">
🛒 Quản Lý Sản Phẩm
</h1>

<form action="product"
      class="row mb-4">

<div class="mb-3">
    <a href="addProduct.jsp" class="btn btn-success">
        ➕ Thêm sản phẩm
    </a>
</div>

<div class="col-md-10">

<input
class="form-control"
name="keyword"
value="${keyword}"
placeholder="Nhập tên sản phẩm...">

</div>

<div class="col-md-2">

<button class="btn btn-primary w-100">

Tìm kiếm

</button>

</div>

</form>

<div class="row">

    <%
List<SanPham> list =
(List<SanPham>)request.getAttribute("list");

if(list!=null){

for(SanPham sp:list){
%>

<div class="col-md-3 mb-4">

<div class="card shadow">

<img
src="<%=sp.getHinhAnh()%>"
style="height:220px;object-fit:cover"
class="card-img-top">

<div class="card-body">

<h5><%=sp.getTenSP()%></h5>

<p>
<%=sp.getMoTa()%>
</p>

<h4 class="text-danger">

<%=String.format("%,.0f",sp.getGia())%> VNĐ

</h4>

<a href="editProduct?id=<%=sp.getMaSP()%>"
class="btn btn-warning">

Sửa

</a>

<a href="deleteProduct?id=<%=sp.getMaSP()%>"
class="btn btn-danger">

Xóa

</a>

</div>

</div>

</div>

<%
}
}
%>

</div>
</div>

</body>
</html>