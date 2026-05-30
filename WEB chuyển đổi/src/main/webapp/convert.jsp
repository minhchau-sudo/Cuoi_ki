<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chương trình chuyển đổi</title>
</head>
<body>

<h2>CHƯƠNG TRÌNH CHUYỂN ĐỔI</h2>

<form action="convert" method="post">

    <label>Chọn chức năng:</label>
    <select name="type">
        <option value="km">Km → Miles</option>
        <option value="temp">°C → °F</option>
        <option value="usd">USD → VND</option>
        <option value="gold">Tính giá vàng</option>
    </select>

    <br><br>

    <label>Nhập giá trị:</label>
    <input type="number" step="any" name="value" required>

    <br><br>

    <button type="submit">Chuyển đổi</button>

</form>

<hr>

<%
String result = (String) request.getAttribute("result");

if(result != null){
%>

<h3>Kết quả: <%= result %></h3>

<%
}
%>

</body>
</html>
