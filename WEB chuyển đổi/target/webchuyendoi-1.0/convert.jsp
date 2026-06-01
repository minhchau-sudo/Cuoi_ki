<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Hệ Thống Chuyển Đổi</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>

        body{
            background: linear-gradient(135deg,#1e3c72,#2a5298);
            min-height:100vh;
            font-family: Arial, sans-serif;
        }

        .main-card{
            margin-top:40px;
            border-radius:20px;
            overflow:hidden;
            box-shadow:0px 10px 25px rgba(0,0,0,0.3);
        }

        .banner{
            width:100%;
            height:250px;
            object-fit:cover;
        }

        .title{
            text-align:center;
            color:white;
            margin-top:20px;
            font-weight:bold;
        }

        .result-box{
            margin-top:20px;
            background:#e8fff0;
            border-left:5px solid green;
            padding:15px;
            border-radius:10px;
            font-size:20px;
            font-weight:bold;
            color:#008000;
        }

        .btn-custom{
            background:#0d6efd;
            color:white;
            font-weight:bold;
        }

        .btn-custom:hover{
            background:#084298;
        }

        .footer{
            text-align:center;
            color:white;
            margin-top:20px;
            padding-bottom:20px;
        }

    </style>

</head>

<body>

<div class="container">

    <h1 class="title">
        🔄 HỆ THỐNG CHUYỂN ĐỔI ĐA CHỨC NĂNG
    </h1>

    <div class="card main-card">

        <img
        src="https://images.unsplash.com/photo-1554224155-6726b3ff858f"
        class="banner">

        <div class="card-body p-4">

            <form action="convert" method="post">

                <div class="mb-3">

                    <label class="form-label">
                        Nhập giá trị
                    </label>

                    <input
                    type="number"
                    step="0.01"
                    name="value"
                    class="form-control"
                    required>

                </div>

                <div class="mb-3">

                    <label class="form-label">
                        Chọn loại chuyển đổi
                    </label>

                    <select
                    name="type"
                    class="form-select">

                        <option value="km">
                            🚗 Km → Miles
                        </option>

                        <option value="cf">
                            🌡️ °C → °F
                        </option>

                        <option value="usd">
                            💵 USD → VNĐ
                        </option>

                        <option value="gold">
                            🏆 Chỉ vàng → VNĐ
                        </option>

                    </select>

                </div>

                <button
                type="submit"
                class="btn btn-custom w-100">

                    THỰC HIỆN CHUYỂN ĐỔI

                </button>

            </form>

            <div class="result-box">

                ${result}

            </div>

        </div>

    </div>

    <div class="footer">
        © 2026 - Đồ án JSP/Servlet - Hệ thống chuyển đổi đa chức năng
    </div>

</div>

</body>
</html>