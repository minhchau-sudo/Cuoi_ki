package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DBConnection;

@WebServlet("/editProduct")
public class EditProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        try {

            Connection con = DBConnection.getConnection();

            PreparedStatement ps = con.prepareStatement(
                "UPDATE SanPham " +
                "SET TenSP=?, Gia=?, MoTa=?, HinhAnh=? " +
                "WHERE MaSP=?"
            );

            ps.setString(1,
                    request.getParameter("tenSP"));

            ps.setDouble(2,
                    Double.parseDouble(
                            request.getParameter("gia")));

            ps.setString(3,
                    request.getParameter("moTa"));

            ps.setString(4,
                    request.getParameter("hinhAnh"));

            ps.setInt(5,
                    Integer.parseInt(
                            request.getParameter("id")));

            ps.executeUpdate();

            ps.close();
            con.close();

        } catch (Exception e) {

            e.printStackTrace();

        }

        response.sendRedirect("product");
    }
}