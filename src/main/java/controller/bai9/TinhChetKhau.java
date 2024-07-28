package controller.bai9;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "tinhchietkhau",urlPatterns = {"/bai9/tinhtoan"})
public class TinhChetKhau extends HttpServlet {
    public void  doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String listPrice = request.getParameter("Price");
        String discountPercent = request.getParameter("Discount");
        double price = Double.parseDouble(listPrice);
        double discount = Double.parseDouble(discountPercent);
        double discountAmount = price * discount * 0.01;
        request.setAttribute("Discount", discountAmount);
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}


