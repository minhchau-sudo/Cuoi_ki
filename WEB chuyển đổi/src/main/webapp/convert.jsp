<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>

    <title>Website Chuyển Đổi</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

</head>

<body style="background:#f5f7fa;">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-header bg-primary text-white">

            <h2>🔄 Hệ Thống Chuyển Đổi Đơn Vị</h2>

        </div>

        <div class="card-body">

            <form action="convert" method="post">

                <div class="mb-3">

                    <label>Nhập giá trị</label>

                    <input
                            type="number"
                            step="0.01"
                            name="value"
                            class="form-control"
                            required>

                </div>

                <div class="mb-3">

                    <label>Loại chuyển đổi</label>

                    <select name="type" class="form-select">

                        <option value="km">
                            Km ➜ Miles
                        </option>

                        <option value="c">
                            °C ➜ °F
                        </option>

                        <option value="usd">
                            USD ➜ VNĐ
                        </option>

                        <option value="gold">
                            Vàng ➜ VNĐ
                        </option>

                    </select>

                </div>

                <button class="btn btn-success">

                    Chuyển đổi

                </button>

            </form>

            <hr>

            <h4 class="text-danger">

                ${result}

            </h4>

        </div>

    </div>

</div>

</body>
</html>