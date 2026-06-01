package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DBConnection;

@WebServlet("/addProduct")
public class AddProductServlet
extends HttpServlet {

@Override
protected void doPost(
HttpServletRequest request,
HttpServletResponse response)
throws IOException {

try {

Connection con =
DBConnection.getConnection();

PreparedStatement ps =
con.prepareStatement(

"INSERT INTO SanPham(TenSP,Gia,MoTa,HinhAnh)"
+
" VALUES(?,?,?,?)"
);

ps.setString(
1,
request.getParameter("tenSP")
);

ps.setDouble(
2,
Double.parseDouble(
request.getParameter("gia")
)
);

ps.setString(
3,
request.getParameter("moTa")
);

ps.setString(
4,
request.getParameter("hinhAnh")
);

ps.executeUpdate();

} catch(NumberFormatException | SQLException e){
}

response.sendRedirect("product");
}
}