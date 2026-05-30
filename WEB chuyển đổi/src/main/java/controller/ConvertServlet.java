package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/convert")
public class ConvertServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("type");

        double value =
                Double.parseDouble(request.getParameter("value"));

        String result = "";

        switch(type) {

            case "km":

                double miles = value * 0.621371;

                result = value + " Km = "
                        + String.format("%.2f", miles)
                        + " Miles";

                break;

            case "temp":

                double fahrenheit =
                        (value * 9 / 5) + 32;

                result = value + " °C = "
                        + String.format("%.2f", fahrenheit)
                        + " °F";

                break;

            case "usd":

                double vnd = value * 26000;

                result = value + " USD = "
                        + String.format("%,.0f", vnd)
                        + " VND";

                break;

            case "gold":

                double giaVang = 12000000;

                double thanhTien = value * giaVang;

                result = value + " chỉ vàng = "
                        + String.format("%,.0f", thanhTien)
                        + " VNĐ";

                break;
        }

        request.setAttribute("result", result);

        request.getRequestDispatcher("convert.jsp")
               .forward(request, response);
    }
}