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

@WebServlet("/deleteProduct")
public class DeleteProductServlet
extends HttpServlet {

@Override
protected void doGet(
HttpServletRequest request,
HttpServletResponse response)
throws IOException {

try {

Connection con =
DBConnection.getConnection();

PreparedStatement ps =
con.prepareStatement(

"DELETE FROM SanPham WHERE MaSP=?"
);

ps.setInt(
1,
Integer.parseInt(
request.getParameter("id")
)
);

ps.executeUpdate();

}
catch(NumberFormatException | SQLException e){
}

response.sendRedirect("product");
}
}