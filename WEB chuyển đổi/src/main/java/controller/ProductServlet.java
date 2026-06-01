package controller;

import dao.DBConnection;
import model.SanPham;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        List<SanPham> list = new ArrayList<>();

        String keyword = request.getParameter("keyword");

        if (keyword == null) {
            keyword = "";
        }

        try (
                Connection con = DBConnection.getConnection();
                PreparedStatement ps = con.prepareStatement(
                        "SELECT * FROM SanPham " +
                        "WHERE TenSP LIKE ? " +
                        "ORDER BY MaSP DESC"
                )
        ) {

            ps.setString(
                    1,
                    "%" + keyword + "%"
            );

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                SanPham sp = new SanPham();

                sp.setMaSP(
                        rs.getInt("MaSP")
                );

                sp.setTenSP(
                        rs.getString("TenSP")
                );

                sp.setGia(
                        rs.getDouble("Gia")
                );

                sp.setMoTa(
                        rs.getString("MoTa")
                );

                sp.setHinhAnh(
                        rs.getString("HinhAnh")
                );

                list.add(sp);
            }

        } catch (Exception e) {

            e.printStackTrace();

            request.setAttribute(
                    "error",
                    e.getMessage()
            );
        }

        request.setAttribute(
                "keyword",
                keyword
        );

        request.setAttribute(
                "list",
                list
        );

        request.getRequestDispatcher(
                "/product.jsp"
        ).forward(
                request,
                response
        );
    }
}